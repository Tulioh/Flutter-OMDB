import 'dart:async';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:omdb_movies/app_state.dart';
import 'package:omdb_movies/data/movie_respository.dart';
import 'package:omdb_movies/data/rx_http_client.dart';
import 'package:omdb_movies/features/home/actions/actions.dart';

final homeEpics = combineEpics<AppState>([fetchMovies]);

final _repository = MovieRepository(RxHttpClient());

Stream<dynamic> fetchMovies(Stream<dynamic> actions, EpicStore<AppState> store) {
    return Observable(actions)
        .ofType(new TypeToken<OnSearchMovieAction>())
        .debounce(Duration(milliseconds: 300))
        .where((action) {
            return action.movieName.length > 2;
        }).flatMap((action) {
            return _repository.getMoviesByName(action.movieName).map((movieEntities) {
                return OnMoviesReceivedAction(movieEntities.toList());
            });
        }
    );
}