import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as httpClient;
import 'package:http/http.dart';
import 'package:omdb_movies/data/entity/serializers.dart';

import 'package:rxdart/rxdart.dart';

class RxHttpClient {

    Observable<T> get<T>(var fullType, {String url, Map<String, String> httpHeaders}) {
        return doHttpRequest(httpClient.get(url, headers: httpHeaders), fullType: fullType);
    }

    Observable<T> post<T>({var fullType, String url, String body, Map<String, String> httpHeaders}) {
        return doHttpRequest(httpClient.post(url, body: body, headers: httpHeaders), fullType: fullType);
    }

    Observable<T> put<T>({var fullType, String url, String body, Map<String, String> httpHeaders}) {
        return doHttpRequest(httpClient.put(url, body: body, headers: httpHeaders), fullType: fullType);
    }

    Observable<T> delete<T>({var fullType, String url, Map<String, String> httpHeaders}) {
        return doHttpRequest(httpClient.delete(url, headers: httpHeaders), fullType: fullType);
    }

    Observable<T> doHttpRequest<T>(Future<Response> response, {var fullType}) {
        var streamController = StreamController<T>();

        _handleResponse<T>(response, streamController, fullType: fullType);

        return Observable<T>(streamController.stream);
    }

    void _handleResponse<T>(Future<Response> response, StreamController<T> streamController, {var fullType}) {
        response.then((response) {
            var responseBody = response.body;

            if (responseBody.isEmpty) {
                if (responseSuccess(response)) {
                    streamController.add(null);
                } else {
                    streamController.addError(null);
                }

                return;
            }

            if (responseSuccess((response))) {
                var jsonResponse = json.decode(responseBody);
                final result = serializers.deserialize(jsonResponse, specifiedType: fullType);
                if (result is T) {
                    streamController.add(result);
                } else {
                    final error = "Result of deserialization is of type ${result?.runtimeType}, not the expected type $T.";
                    streamController.addError(Exception(error));
                }
            } else {
                var jsonResponse = json.decode(responseBody);
                streamController.addError(jsonResponse);
            }

            streamController.close();
        }, onError: (error) {
            streamController.addError(error);

            streamController.close();
        });
    }

    bool responseSuccess(Response response) {
        return response.statusCode >= 200 && response.statusCode <= 299;
    }
}