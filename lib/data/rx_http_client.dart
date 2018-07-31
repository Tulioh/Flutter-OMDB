import 'dart:_http';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:rxdart/rxdart.dart';

class RxHttpClient {
    final HttpClient _httpClient;

    RxHttpClient(this._httpClient);

    Observable<T> get<T>({String url, Map<String, String> httpHeaders}) {
        StreamController streamController = StreamController();

        _httpClient.getUrl(Uri.parse(url)).then((response) {
            _handleResponse(response);
        }, (error) {

        });

        return Observable(streamController.stream);
    }

    void _handleResponse<T>(Response response) {
        var responseBody = json.decode(response.body);

        if (response.statusCode >= 200 && response.statusCode <= 299) {
//            var responseEntity =
            streamController.add(responseBody);
        } else {
            streamController.addError(responseBody);
        }

        streamController.close();
    }
}