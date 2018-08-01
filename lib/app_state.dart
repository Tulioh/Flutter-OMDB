import 'package:omdb_movies/features/home/state/home_state.dart';

class AppState {
    final HomeState homeState;

    AppState(this.homeState);

    factory AppState.initialize() {
        return AppState(HomeState.initialize());
    }
}