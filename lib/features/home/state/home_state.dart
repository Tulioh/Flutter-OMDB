import 'package:omdb_movies/features/home/viewmodels/movie_view_model.dart';

class HomeState {
    final List<MovieViewModel> movies;

    HomeState(this.movies);

    factory HomeState.initialize() {
        return new HomeState(List.unmodifiable([]));
    }
}