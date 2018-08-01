import 'package:flutter/material.dart';
import 'package:omdb_movies/app_state.dart';
import 'package:omdb_movies/features/home/actions/actions.dart';
import 'package:omdb_movies/features/home/state/home_state.dart';
import 'package:omdb_movies/features/home/viewmodels/movie_view_model.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeWidget extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return StoreConnector(
            onInit: (store) => store.dispatch(RequestMoviesAction()),
            converter: (Store<AppState> store) => store.state.homeState,
            builder: (context, HomeState state) {
                return Scaffold(
                    appBar: new AppBar(
                        title: new Text('OMDB Movies'),
                    ),
                    body: MovieListWidget(state.movies),
                );
            },
        );
    }
}

class MovieListWidget extends StatelessWidget {
    final List<MovieViewModel> movies;

    MovieListWidget(this.movies);

    @override
    Widget build(BuildContext context) {
        return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
                return getItem(movies[index]);
            }
        );
    }

    Widget getItem(MovieViewModel movie) {
        return Text(movie.name);
    }
}