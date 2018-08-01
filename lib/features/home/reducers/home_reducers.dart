import 'package:omdb_movies/features/home/actions/actions.dart';
import 'package:omdb_movies/features/home/state/home_state.dart';
import 'package:omdb_movies/features/home/viewmodels/movie_view_model.dart';
import 'package:redux/redux.dart';

HomeState homeReducer(HomeState state, dynamic action) {
    return new HomeState(
        _moviesReducer(state.movies, action)
    );
}

final _moviesReducer = combineReducers<List<MovieViewModel>>([
    TypedReducer<List<MovieViewModel>, OnMoviesReceivedAction>(_getMovieViewModels)
]);

List<MovieViewModel> _getMovieViewModels(List<MovieViewModel> oldMovies, OnMoviesReceivedAction action) {
    return action.movies;
}