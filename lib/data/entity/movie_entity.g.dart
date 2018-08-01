// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

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

Serializer<MovieEntity> _$movieEntitySerializer = new _$MovieEntitySerializer();

class _$MovieEntitySerializer implements StructuredSerializer<MovieEntity> {
  @override
  final Iterable<Type> types = const [MovieEntity, _$MovieEntity];
  @override
  final String wireName = 'MovieEntity';

  @override
  Iterable serialize(Serializers serializers, MovieEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MovieEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieEntity extends MovieEntity {
  @override
  final String name;

  factory _$MovieEntity([void updates(MovieEntityBuilder b)]) =>
      (new MovieEntityBuilder()..update(updates)).build();

  _$MovieEntity._({this.name}) : super._() {
    if (name == null) throw new BuiltValueNullFieldError('MovieEntity', 'name');
  }

  @override
  MovieEntity rebuild(void updates(MovieEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieEntityBuilder toBuilder() => new MovieEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MovieEntity) return false;
    return name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieEntity')..add('name', name))
        .toString();
  }
}

class MovieEntityBuilder implements Builder<MovieEntity, MovieEntityBuilder> {
  _$MovieEntity _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MovieEntityBuilder();

  MovieEntityBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieEntity other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MovieEntity;
  }

  @override
  void update(void updates(MovieEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieEntity build() {
    final _$result = _$v ?? new _$MovieEntity._(name: name);
    replace(_$result);
    return _$result;
  }
}
