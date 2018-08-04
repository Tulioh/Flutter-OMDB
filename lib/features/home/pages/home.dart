import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:omdb_movies/widgets/material_search_bar.dart';
import 'package:omdb_movies/app_state.dart';
import 'package:omdb_movies/features/home/actions/actions.dart';
import 'package:omdb_movies/features/home/state/home_state.dart';
import 'package:omdb_movies/features/home/viewmodels/movie_view_model.dart';

class HomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return StoreConnector(
            converter: (Store<AppState> store) => store,
            builder: (context, Store<AppState> store) {
                return Scaffold(
                    appBar: MaterialSearchBar(
                        appBarTitle: 'OMDB Movies',
                        searchFieldText: 'Search Your Movie',
                        onTextChanged: (text) {
                            store.dispatch(OnSearchMovieAction(text));
                        }
                    ),
                    body: MovieListWidget(store.state.homeState.movies),
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
        return GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: getItems(),
        );
    }

    List<Widget> getItems() {
        List<Widget> movieWidget = [];

        for (var movie in movies) {
            movieWidget.add(GridTile(
                child: Container(
                        margin: const EdgeInsets.all(5.0),
                        child: Image.network(
                            movie.posterUrl,
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover
                        )
                    )
                )
            );
        }

        return movieWidget;
    }
}