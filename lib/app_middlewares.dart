import 'package:redux_epics/redux_epics.dart';
import 'package:omdb_movies/features/home/middlewares/home_middlewares.dart';
import 'package:omdb_movies/app_state.dart';

final allEpics = combineEpics<AppState>([homeEpics]);