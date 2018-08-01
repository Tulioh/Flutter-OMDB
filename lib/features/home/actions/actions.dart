import 'package:omdb_movies/features/home/viewmodels/movie_view_model.dart';

class RequestMoviesAction {}

class OnMoviesReceivedAction {
    final List<MovieViewModel> movies;

    OnMoviesReceivedAction(this.movies);
}