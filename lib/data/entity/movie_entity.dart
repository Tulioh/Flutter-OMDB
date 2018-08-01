import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:omdb_movies/data/entity/movie_rating_entity.dart';

part 'movie_entity.g.dart';

abstract class MovieEntity implements Built<MovieEntity, MovieEntityBuilder> {

    @nullable
    @BuiltValueField(wireName: 'Title')
    String get title;
    @nullable
    @BuiltValueField(wireName: 'Year')
    String get year;
    @nullable
    @BuiltValueField(wireName: 'Type')
    String get type;
    @nullable
    @BuiltValueField(wireName: 'Poster')
    String get poster;
    @nullable
    @BuiltValueField(wireName: 'Rated')
    String get rated;
    @nullable
    @BuiltValueField(wireName: 'Ratings')
    BuiltList<MovieRatingEntity> get ratings;
    @nullable
    @BuiltValueField(wireName: 'Released')
    String get released;
    @nullable
    @BuiltValueField(wireName: 'Runtime')
    String get runtime;
    @nullable
    @BuiltValueField(wireName: 'Genre')
    String get genre;
    @nullable
    @BuiltValueField(wireName: 'Director')
    String get director;
    @nullable
    @BuiltValueField(wireName: 'Writer')
    String get writer;
    @nullable
    @BuiltValueField(wireName: 'Actors')
    String get actors;
    @nullable
    @BuiltValueField(wireName: 'Plot')
    String get plot;
    @nullable
    @BuiltValueField(wireName: 'Language')
    String get language;
    @nullable
    @BuiltValueField(wireName: 'Country')
    String get country;
    @nullable
    @BuiltValueField(wireName: 'Awards')
    String get awards;
    @nullable
    @BuiltValueField(wireName: 'Metascore')
    String get metaScore;
    @nullable
    @BuiltValueField(wireName: 'DVD')
    String get dvd;
    @nullable
    @BuiltValueField(wireName: 'BoxOffice')
    String get boxOffice;
    @nullable
    @BuiltValueField(wireName: 'Production')
    String get production;
    @nullable
    @BuiltValueField(wireName: 'Website')
    String get website;
    @nullable
    @BuiltValueField(wireName: 'imdbID')
    String get imdbId;
    @nullable
    String get imdbRating;
    @nullable
    String get imdbVotes;
    @nullable
    String get totalSeasons;

    MovieEntity._();
    factory MovieEntity([updates(MovieEntityBuilder b)]) = _$MovieEntity;
    static Serializer<MovieEntity> get serializer => _$movieEntitySerializer;
}