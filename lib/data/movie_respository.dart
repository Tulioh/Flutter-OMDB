import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:omdb_movies/data/entity/movie_entity.dart';
import 'package:omdb_movies/data/entity/omdb_search_result_entity.dart';
import 'package:omdb_movies/data/rx_http_client.dart';
import 'package:rxdart/rxdart.dart';

class MovieRepository {
    final String _url = 'http://www.omdbapi.com/?apikey=2be5a92a';
    final RxHttpClient _rxHttpClient;

    MovieRepository(this._rxHttpClient);

    Observable<BuiltList<MovieEntity>> getMoviesByName(String name) {
//        final specifiedType = const FullType(BuiltList, const [const FullType(OmdbSearchResultEntity)]);
        final specifiedType = const FullType(OmdbSearchResultEntity);
        final url = '$_url&s=$name';

        return _rxHttpClient.get<OmdbSearchResultEntity>(specifiedType, url: url)
            .map((response) {
                return response.searchResults;
            }
        );
    }

}