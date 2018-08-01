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
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.year != null) {
      result
        ..add('Year')
        ..add(serializers.serialize(object.year,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('Type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.poster != null) {
      result
        ..add('Poster')
        ..add(serializers.serialize(object.poster,
            specifiedType: const FullType(String)));
    }
    if (object.rated != null) {
      result
        ..add('Rated')
        ..add(serializers.serialize(object.rated,
            specifiedType: const FullType(String)));
    }
    if (object.ratings != null) {
      result
        ..add('Ratings')
        ..add(serializers.serialize(object.ratings,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MovieRatingEntity)])));
    }
    if (object.released != null) {
      result
        ..add('Released')
        ..add(serializers.serialize(object.released,
            specifiedType: const FullType(String)));
    }
    if (object.runtime != null) {
      result
        ..add('Runtime')
        ..add(serializers.serialize(object.runtime,
            specifiedType: const FullType(String)));
    }
    if (object.genre != null) {
      result
        ..add('Genre')
        ..add(serializers.serialize(object.genre,
            specifiedType: const FullType(String)));
    }
    if (object.director != null) {
      result
        ..add('Director')
        ..add(serializers.serialize(object.director,
            specifiedType: const FullType(String)));
    }
    if (object.writer != null) {
      result
        ..add('Writer')
        ..add(serializers.serialize(object.writer,
            specifiedType: const FullType(String)));
    }
    if (object.actors != null) {
      result
        ..add('Actors')
        ..add(serializers.serialize(object.actors,
            specifiedType: const FullType(String)));
    }
    if (object.plot != null) {
      result
        ..add('Plot')
        ..add(serializers.serialize(object.plot,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('Language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.country != null) {
      result
        ..add('Country')
        ..add(serializers.serialize(object.country,
            specifiedType: const FullType(String)));
    }
    if (object.awards != null) {
      result
        ..add('Awards')
        ..add(serializers.serialize(object.awards,
            specifiedType: const FullType(String)));
    }
    if (object.metaScore != null) {
      result
        ..add('Metascore')
        ..add(serializers.serialize(object.metaScore,
            specifiedType: const FullType(String)));
    }
    if (object.dvd != null) {
      result
        ..add('DVD')
        ..add(serializers.serialize(object.dvd,
            specifiedType: const FullType(String)));
    }
    if (object.boxOffice != null) {
      result
        ..add('BoxOffice')
        ..add(serializers.serialize(object.boxOffice,
            specifiedType: const FullType(String)));
    }
    if (object.production != null) {
      result
        ..add('Production')
        ..add(serializers.serialize(object.production,
            specifiedType: const FullType(String)));
    }
    if (object.website != null) {
      result
        ..add('Website')
        ..add(serializers.serialize(object.website,
            specifiedType: const FullType(String)));
    }
    if (object.imdbId != null) {
      result
        ..add('imdbID')
        ..add(serializers.serialize(object.imdbId,
            specifiedType: const FullType(String)));
    }
    if (object.imdbRating != null) {
      result
        ..add('imdbRating')
        ..add(serializers.serialize(object.imdbRating,
            specifiedType: const FullType(String)));
    }
    if (object.imdbVotes != null) {
      result
        ..add('imdbVotes')
        ..add(serializers.serialize(object.imdbVotes,
            specifiedType: const FullType(String)));
    }
    if (object.totalSeasons != null) {
      result
        ..add('totalSeasons')
        ..add(serializers.serialize(object.totalSeasons,
            specifiedType: const FullType(String)));
    }

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
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Poster':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Rated':
          result.rated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Ratings':
          result.ratings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieRatingEntity)]))
              as BuiltList);
          break;
        case 'Released':
          result.released = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Director':
          result.director = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Writer':
          result.writer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Actors':
          result.actors = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Plot':
          result.plot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Awards':
          result.awards = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Metascore':
          result.metaScore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'DVD':
          result.dvd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'BoxOffice':
          result.boxOffice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Production':
          result.production = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbID':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbRating':
          result.imdbRating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbVotes':
          result.imdbVotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalSeasons':
          result.totalSeasons = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieEntity extends MovieEntity {
  @override
  final String title;
  @override
  final String year;
  @override
  final String type;
  @override
  final String poster;
  @override
  final String rated;
  @override
  final BuiltList<MovieRatingEntity> ratings;
  @override
  final String released;
  @override
  final String runtime;
  @override
  final String genre;
  @override
  final String director;
  @override
  final String writer;
  @override
  final String actors;
  @override
  final String plot;
  @override
  final String language;
  @override
  final String country;
  @override
  final String awards;
  @override
  final String metaScore;
  @override
  final String dvd;
  @override
  final String boxOffice;
  @override
  final String production;
  @override
  final String website;
  @override
  final String imdbId;
  @override
  final String imdbRating;
  @override
  final String imdbVotes;
  @override
  final String totalSeasons;

  factory _$MovieEntity([void updates(MovieEntityBuilder b)]) =>
      (new MovieEntityBuilder()..update(updates)).build();

  _$MovieEntity._(
      {this.title,
      this.year,
      this.type,
      this.poster,
      this.rated,
      this.ratings,
      this.released,
      this.runtime,
      this.genre,
      this.director,
      this.writer,
      this.actors,
      this.plot,
      this.language,
      this.country,
      this.awards,
      this.metaScore,
      this.dvd,
      this.boxOffice,
      this.production,
      this.website,
      this.imdbId,
      this.imdbRating,
      this.imdbVotes,
      this.totalSeasons})
      : super._();

  @override
  MovieEntity rebuild(void updates(MovieEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieEntityBuilder toBuilder() => new MovieEntityBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MovieEntity) return false;
    return title == other.title &&
        year == other.year &&
        type == other.type &&
        poster == other.poster &&
        rated == other.rated &&
        ratings == other.ratings &&
        released == other.released &&
        runtime == other.runtime &&
        genre == other.genre &&
        director == other.director &&
        writer == other.writer &&
        actors == other.actors &&
        plot == other.plot &&
        language == other.language &&
        country == other.country &&
        awards == other.awards &&
        metaScore == other.metaScore &&
        dvd == other.dvd &&
        boxOffice == other.boxOffice &&
        production == other.production &&
        website == other.website &&
        imdbId == other.imdbId &&
        imdbRating == other.imdbRating &&
        imdbVotes == other.imdbVotes &&
        totalSeasons == other.totalSeasons;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc(0, title.hashCode), year.hashCode), type.hashCode), poster.hashCode), rated.hashCode), ratings.hashCode),
                                                                                released.hashCode),
                                                                            runtime.hashCode),
                                                                        genre.hashCode),
                                                                    director.hashCode),
                                                                writer.hashCode),
                                                            actors.hashCode),
                                                        plot.hashCode),
                                                    language.hashCode),
                                                country.hashCode),
                                            awards.hashCode),
                                        metaScore.hashCode),
                                    dvd.hashCode),
                                boxOffice.hashCode),
                            production.hashCode),
                        website.hashCode),
                    imdbId.hashCode),
                imdbRating.hashCode),
            imdbVotes.hashCode),
        totalSeasons.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieEntity')
          ..add('title', title)
          ..add('year', year)
          ..add('type', type)
          ..add('poster', poster)
          ..add('rated', rated)
          ..add('ratings', ratings)
          ..add('released', released)
          ..add('runtime', runtime)
          ..add('genre', genre)
          ..add('director', director)
          ..add('writer', writer)
          ..add('actors', actors)
          ..add('plot', plot)
          ..add('language', language)
          ..add('country', country)
          ..add('awards', awards)
          ..add('metaScore', metaScore)
          ..add('dvd', dvd)
          ..add('boxOffice', boxOffice)
          ..add('production', production)
          ..add('website', website)
          ..add('imdbId', imdbId)
          ..add('imdbRating', imdbRating)
          ..add('imdbVotes', imdbVotes)
          ..add('totalSeasons', totalSeasons))
        .toString();
  }
}

class MovieEntityBuilder implements Builder<MovieEntity, MovieEntityBuilder> {
  _$MovieEntity _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  String _rated;
  String get rated => _$this._rated;
  set rated(String rated) => _$this._rated = rated;

  ListBuilder<MovieRatingEntity> _ratings;
  ListBuilder<MovieRatingEntity> get ratings =>
      _$this._ratings ??= new ListBuilder<MovieRatingEntity>();
  set ratings(ListBuilder<MovieRatingEntity> ratings) =>
      _$this._ratings = ratings;

  String _released;
  String get released => _$this._released;
  set released(String released) => _$this._released = released;

  String _runtime;
  String get runtime => _$this._runtime;
  set runtime(String runtime) => _$this._runtime = runtime;

  String _genre;
  String get genre => _$this._genre;
  set genre(String genre) => _$this._genre = genre;

  String _director;
  String get director => _$this._director;
  set director(String director) => _$this._director = director;

  String _writer;
  String get writer => _$this._writer;
  set writer(String writer) => _$this._writer = writer;

  String _actors;
  String get actors => _$this._actors;
  set actors(String actors) => _$this._actors = actors;

  String _plot;
  String get plot => _$this._plot;
  set plot(String plot) => _$this._plot = plot;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _awards;
  String get awards => _$this._awards;
  set awards(String awards) => _$this._awards = awards;

  String _metaScore;
  String get metaScore => _$this._metaScore;
  set metaScore(String metaScore) => _$this._metaScore = metaScore;

  String _dvd;
  String get dvd => _$this._dvd;
  set dvd(String dvd) => _$this._dvd = dvd;

  String _boxOffice;
  String get boxOffice => _$this._boxOffice;
  set boxOffice(String boxOffice) => _$this._boxOffice = boxOffice;

  String _production;
  String get production => _$this._production;
  set production(String production) => _$this._production = production;

  String _website;
  String get website => _$this._website;
  set website(String website) => _$this._website = website;

  String _imdbId;
  String get imdbId => _$this._imdbId;
  set imdbId(String imdbId) => _$this._imdbId = imdbId;

  String _imdbRating;
  String get imdbRating => _$this._imdbRating;
  set imdbRating(String imdbRating) => _$this._imdbRating = imdbRating;

  String _imdbVotes;
  String get imdbVotes => _$this._imdbVotes;
  set imdbVotes(String imdbVotes) => _$this._imdbVotes = imdbVotes;

  String _totalSeasons;
  String get totalSeasons => _$this._totalSeasons;
  set totalSeasons(String totalSeasons) => _$this._totalSeasons = totalSeasons;

  MovieEntityBuilder();

  MovieEntityBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _year = _$v.year;
      _type = _$v.type;
      _poster = _$v.poster;
      _rated = _$v.rated;
      _ratings = _$v.ratings?.toBuilder();
      _released = _$v.released;
      _runtime = _$v.runtime;
      _genre = _$v.genre;
      _director = _$v.director;
      _writer = _$v.writer;
      _actors = _$v.actors;
      _plot = _$v.plot;
      _language = _$v.language;
      _country = _$v.country;
      _awards = _$v.awards;
      _metaScore = _$v.metaScore;
      _dvd = _$v.dvd;
      _boxOffice = _$v.boxOffice;
      _production = _$v.production;
      _website = _$v.website;
      _imdbId = _$v.imdbId;
      _imdbRating = _$v.imdbRating;
      _imdbVotes = _$v.imdbVotes;
      _totalSeasons = _$v.totalSeasons;
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
    _$MovieEntity _$result;
    try {
      _$result = _$v ??
          new _$MovieEntity._(
              title: title,
              year: year,
              type: type,
              poster: poster,
              rated: rated,
              ratings: _ratings?.build(),
              released: released,
              runtime: runtime,
              genre: genre,
              director: director,
              writer: writer,
              actors: actors,
              plot: plot,
              language: language,
              country: country,
              awards: awards,
              metaScore: metaScore,
              dvd: dvd,
              boxOffice: boxOffice,
              production: production,
              website: website,
              imdbId: imdbId,
              imdbRating: imdbRating,
              imdbVotes: imdbVotes,
              totalSeasons: totalSeasons);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ratings';
        _ratings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieEntity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
