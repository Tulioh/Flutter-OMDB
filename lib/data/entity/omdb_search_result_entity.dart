import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:omdb_movies/data/entity/movie_entity.dart';

part 'omdb_search_result_entity.g.dart';

abstract class OmdbSearchResultEntity implements Built<OmdbSearchResultEntity, OmdbSearchResultEntityBuilder> {

    @BuiltValueField(wireName: 'Search')
    BuiltList<MovieEntity> get searchResults;

    OmdbSearchResultEntity._();
    factory OmdbSearchResultEntity([updates(OmdbSearchResultEntityBuilder b)]) = _$OmdbSearchResultEntity;
    static Serializer<OmdbSearchResultEntity> get serializer => _$omdbSearchResultEntitySerializer;
}