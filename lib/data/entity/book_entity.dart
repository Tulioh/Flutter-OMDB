import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_entity.g.dart';

abstract class BookEntity implements Built<BookEntity, BookEntityBuilder> {
    String get key;

    BookEntity._();
    factory BookEntity([updates(BookEntityBuilder b)]) = _$BookEntity;
    static Serializer<BookEntity> get serializer => _$bookEntitySerializer;
}