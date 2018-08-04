import 'package:omdb_movies/data/entity/movie_entity.dart';

class OnSearchMovieAction {
    final String movieName;

    OnSearchMovieAction(this.movieName);
}

class OnMoviesReceivedAction {
    final List<MovieEntity> movies;

    OnMoviesReceivedAction(this.movies);
}