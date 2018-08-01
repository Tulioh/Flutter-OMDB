import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_rating_entity.g.dart';

abstract class MovieRatingEntity implements Built<MovieRatingEntity, MovieRatingEntityBuilder> {

    @nullable
    @BuiltValueField(wireName: 'Source')
    String get source;
    @nullable
    @BuiltValueField(wireName: 'Value')
    String get value;

    MovieRatingEntity._();
    factory MovieRatingEntity([updates(MovieRatingEntityBuilder b)]) = _$MovieRatingEntity;
    static Serializer<MovieRatingEntity> get serializer => _$movieRatingEntitySerializer;
}