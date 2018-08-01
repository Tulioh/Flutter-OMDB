import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:omdb_movies/app_middlewares.dart';
import 'package:omdb_movies/features/home/pages/home.dart';
import 'package:omdb_movies/app_state.dart';
import 'package:omdb_movies/app_reducers.dart';

void main() => runApp(new OmdbApp());

class OmdbApp extends StatelessWidget {
    final store = Store<AppState> (
        appStateReducer,
        initialState: AppState.initialize(),
        middleware: [new EpicMiddleware(allEpics)]
    );

    @override
    Widget build(BuildContext context) {
        return StoreProvider(
            store: store,
            child: MaterialApp(
                title: 'OMDB Movies',
                theme: new ThemeData(
                    primarySwatch: Colors.blue,
                ),
                home: HomeWidget(),
            )
        );
    }
}