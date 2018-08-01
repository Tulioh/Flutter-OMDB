import 'dart:async';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:omdb_movies/app_state.dart';
import 'package:omdb_movies/data/movie_respository.dart';
import 'package:omdb_movies/data/rx_http_client.dart';
import 'package:omdb_movies/features/home/actions/actions.dart';
import 'package:omdb_movies/features/home/viewmodels/movie_view_model.dart';

final homeEpics = combineEpics<AppState>([fetchMovies]);

final _repository = MovieRepository(RxHttpClient());

Stream<dynamic> fetchMovies(Stream<dynamic> actions, EpicStore<AppState> store) {
    return Observable(actions)
        .ofType(new TypeToken<RequestMoviesAction>())
        .flatMap((_) {
            return _repository.getMoviesByName('batman').map((movieEntities) {
                List<MovieViewModel> movies = [];

                for (var movieEntity in movieEntities) {
                    var movieViewModel = MovieViewModel();
                    movieViewModel.name = movieEntity.title;

                    movies.add(movieViewModel);
                }

                return OnMoviesReceivedAction(movies);
            });
        }
    );
}