import 'package:omdb_movies/app_state.dart';
import 'package:omdb_movies/features/home/reducers/home_reducers.dart';

AppState appStateReducer(AppState state, dynamic action) {
    return new AppState(
        homeReducer(state.homeState, action)
    );
}