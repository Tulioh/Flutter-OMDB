// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<BookEntity> _$bookEntitySerializer = new _$BookEntitySerializer();

class _$BookEntitySerializer implements StructuredSerializer<BookEntity> {
  @override
  final Iterable<Type> types = const [BookEntity, _$BookEntity];
  @override
  final String wireName = 'BookEntity';

  @override
  Iterable serialize(Serializers serializers, BookEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BookEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BookEntity extends BookEntity {
  @override
  final String key;

  factory _$BookEntity([void updates(BookEntityBuilder b)]) =>
      (new BookEntityBuilder()..update(updates)).build();

  _$BookEntity._({this.key}) : super._() {
    if (key == null) throw new BuiltValueNullFieldError('BookEntity', 'key');
  }

  @override
  BookEntity rebuild(void updates(BookEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BookEntityBuilder toBuilder() => new BookEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! BookEntity) return false;
    return key == other.key;
  }

  @override
  int get hashCode {
    return $jf($jc(0, key.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookEntity')..add('key', key))
        .toString();
  }
}

class BookEntityBuilder implements Builder<BookEntity, BookEntityBuilder> {
  _$BookEntity _$v;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  BookEntityBuilder();

  BookEntityBuilder get _$this {
    if (_$v != null) {
      _key = _$v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookEntity other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$BookEntity;
  }

  @override
  void update(void updates(BookEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BookEntity build() {
    final _$result = _$v ?? new _$BookEntity._(key: key);
    replace(_$result);
    return _$result;
  }
}
