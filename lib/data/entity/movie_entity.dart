import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_entity.g.dart';

abstract class MovieEntity implements Built<MovieEntity, MovieEntityBuilder> {
    String get name;

    MovieEntity._();
    factory MovieEntity([updates(MovieEntityBuilder b)]) = _$MovieEntity;
    static Serializer<MovieEntity> get serializer => _$movieEntitySerializer;
}