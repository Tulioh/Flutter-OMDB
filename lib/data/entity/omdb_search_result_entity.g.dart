// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'omdb_search_result_entity.dart';

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

Serializer<OmdbSearchResultEntity> _$omdbSearchResultEntitySerializer =
    new _$OmdbSearchResultEntitySerializer();

class _$OmdbSearchResultEntitySerializer
    implements StructuredSerializer<OmdbSearchResultEntity> {
  @override
  final Iterable<Type> types = const [
    OmdbSearchResultEntity,
    _$OmdbSearchResultEntity
  ];
  @override
  final String wireName = 'OmdbSearchResultEntity';

  @override
  Iterable serialize(Serializers serializers, OmdbSearchResultEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Search',
      serializers.serialize(object.searchResults,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MovieEntity)])),
    ];

    return result;
  }

  @override
  OmdbSearchResultEntity deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OmdbSearchResultEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Search':
          result.searchResults.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieEntity)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$OmdbSearchResultEntity extends OmdbSearchResultEntity {
  @override
  final BuiltList<MovieEntity> searchResults;

  factory _$OmdbSearchResultEntity(
          [void updates(OmdbSearchResultEntityBuilder b)]) =>
      (new OmdbSearchResultEntityBuilder()..update(updates)).build();

  _$OmdbSearchResultEntity._({this.searchResults}) : super._() {
    if (searchResults == null)
      throw new BuiltValueNullFieldError(
          'OmdbSearchResultEntity', 'searchResults');
  }

  @override
  OmdbSearchResultEntity rebuild(
          void updates(OmdbSearchResultEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OmdbSearchResultEntityBuilder toBuilder() =>
      new OmdbSearchResultEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! OmdbSearchResultEntity) return false;
    return searchResults == other.searchResults;
  }

  @override
  int get hashCode {
    return $jf($jc(0, searchResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OmdbSearchResultEntity')
          ..add('searchResults', searchResults))
        .toString();
  }
}

class OmdbSearchResultEntityBuilder
    implements Builder<OmdbSearchResultEntity, OmdbSearchResultEntityBuilder> {
  _$OmdbSearchResultEntity _$v;

  ListBuilder<MovieEntity> _searchResults;
  ListBuilder<MovieEntity> get searchResults =>
      _$this._searchResults ??= new ListBuilder<MovieEntity>();
  set searchResults(ListBuilder<MovieEntity> searchResults) =>
      _$this._searchResults = searchResults;

  OmdbSearchResultEntityBuilder();

  OmdbSearchResultEntityBuilder get _$this {
    if (_$v != null) {
      _searchResults = _$v.searchResults?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OmdbSearchResultEntity other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$OmdbSearchResultEntity;
  }

  @override
  void update(void updates(OmdbSearchResultEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OmdbSearchResultEntity build() {
    _$OmdbSearchResultEntity _$result;
    try {
      _$result = _$v ??
          new _$OmdbSearchResultEntity._(searchResults: searchResults.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'searchResults';
        searchResults.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OmdbSearchResultEntity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
