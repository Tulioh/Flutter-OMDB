import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:omdb_movies/data/entity/book_entity.dart';
import 'package:omdb_movies/data/entity/movie_entity.dart';
import 'package:omdb_movies/data/rx_http_client.dart';
import 'package:rxdart/rxdart.dart';

class MovieRepository {
    final String _url = 'http://openlibrary.org/query.json?type=/type/edition&authors=/authors/OL1A&title=';
    final RxHttpClient _rxHttpClient;

    MovieRepository(this._rxHttpClient);

    Observable<BuiltList<MovieEntity>> getMovies() {
        final specifiedType = const FullType(BuiltList, const [const FullType(BookEntity)]);
        return _rxHttpClient.get<BuiltList<MovieEntity>>(specifiedType, url: _url);
    }

}