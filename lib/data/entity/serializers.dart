import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:omdb_movies/data/entity/movie_entity.dart';
import 'package:omdb_movies/data/entity/movie_rating_entity.dart';
import 'package:omdb_movies/data/entity/omdb_search_result_entity.dart';

part 'serializers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor(const [
    MovieEntity,
    OmdbSearchResultEntity,
    MovieRatingEntity,
])
final Serializers serializers = (_$serializers.toBuilder()
//    ..addBuilderFactory(const FullType(BuiltList, const [const FullType(MovieEntity)]), () => new ListBuilder<MovieEntity>())
    ..addPlugin(new StandardJsonPlugin()))
    .build();