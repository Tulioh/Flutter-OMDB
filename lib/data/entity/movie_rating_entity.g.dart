// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_rating_entity.dart';

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

Serializer<MovieRatingEntity> _$movieRatingEntitySerializer =
    new _$MovieRatingEntitySerializer();

class _$MovieRatingEntitySerializer
    implements StructuredSerializer<MovieRatingEntity> {
  @override
  final Iterable<Type> types = const [MovieRatingEntity, _$MovieRatingEntity];
  @override
  final String wireName = 'MovieRatingEntity';

  @override
  Iterable serialize(Serializers serializers, MovieRatingEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.source != null) {
      result
        ..add('Source')
        ..add(serializers.serialize(object.source,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  MovieRatingEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieRatingEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieRatingEntity extends MovieRatingEntity {
  @override
  final String source;
  @override
  final String value;

  factory _$MovieRatingEntity([void updates(MovieRatingEntityBuilder b)]) =>
      (new MovieRatingEntityBuilder()..update(updates)).build();

  _$MovieRatingEntity._({this.source, this.value}) : super._();

  @override
  MovieRatingEntity rebuild(void updates(MovieRatingEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieRatingEntityBuilder toBuilder() =>
      new MovieRatingEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MovieRatingEntity) return false;
    return source == other.source && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, source.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieRatingEntity')
          ..add('source', source)
          ..add('value', value))
        .toString();
  }
}

class MovieRatingEntityBuilder
    implements Builder<MovieRatingEntity, MovieRatingEntityBuilder> {
  _$MovieRatingEntity _$v;

  String _source;
  String get source => _$this._source;
  set source(String source) => _$this._source = source;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  MovieRatingEntityBuilder();

  MovieRatingEntityBuilder get _$this {
    if (_$v != null) {
      _source = _$v.source;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieRatingEntity other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MovieRatingEntity;
  }

  @override
  void update(void updates(MovieRatingEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieRatingEntity build() {
    final _$result =
        _$v ?? new _$MovieRatingEntity._(source: source, value: value);
    replace(_$result);
    return _$result;
  }
}
