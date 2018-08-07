import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:omdb_movies/widgets/material_search_bar.dart';
import 'package:omdb_movies/app_state.dart';
import 'package:omdb_movies/features/home/actions/actions.dart';
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
            movieWidget.add(Card(
                child: Stack(
                        children: <Widget>[
                            Container(
                                constraints: BoxConstraints.expand(
                                    width: double.infinity,
                                    height: double.infinity
                                ),
                                child: Image.network(
                                    movie.posterUrl,
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.cover
                                ),
                            ),
                            Container(
                                alignment: AlignmentDirectional.topCenter,
                                child: Container(
                                    margin: EdgeInsets.all(8.0),
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                        color: const Color(0xAE000000),
                                        borderRadius: BorderRadius.all(Radius.circular(4.0))
                                    ),
                                    child: Text(
                                        movie.name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                    )
                                ),
                            )
                        ],
                    )
                )
            );
        }

        return movieWidget;
    }
}