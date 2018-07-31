import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:omdb_movies/data/entity/book_entity.dart';

part 'serializers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor(const [
    BookEntity,
])
final Serializers serializers = _$serializers;