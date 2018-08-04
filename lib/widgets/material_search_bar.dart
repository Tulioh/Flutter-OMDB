import 'package:flutter/material.dart';

class MaterialSearchBar extends StatefulWidget implements PreferredSizeWidget {

    @override
    final Size preferredSize;

    final String appBarTitle;
    final String searchFieldText;
    final Function(String) onTextChanged;

    MaterialSearchBar({this.appBarTitle, this.searchFieldText, this.onTextChanged})  :
            preferredSize = Size.fromHeight(kToolbarHeight);

    @override
    State<MaterialSearchBar> createState() => new _MaterialSearchBarState();
}

class _MaterialSearchBarState extends State<MaterialSearchBar>  {

    final _textFieldController = TextEditingController();
    bool _isSearching = false;

    @override
    void dispose() {
        _textFieldController.dispose();

        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return AppBar(
            title: _getAppBarTitle(),
            leading: _getLeadingIcon(),
            actions: <Widget>[
                _getAppBarActions()
            ],
        );
    }

    Widget _getLeadingIcon() {
        return _isSearching ? _getBackButton() : null;
    }

    Widget _getAppBarActions() {
        return _isSearching ? _getClearIcon() : _getSearchIcon();
    }

    Widget _getAppBarTitle() {
        return _isSearching ? _getTextField() : _getTitleText();
    }

    Widget _getTitleText() {
        return Text(widget.appBarTitle);
    }

    Widget _getTextField() {

        return Container(
            child: TextField(
                    controller: _textFieldController,
                    cursorColor: Colors.white,
                    maxLines: 1,
                    onChanged: (text) {
                        widget.onTextChanged(text);
                    },
                    style: TextStyle(
                        color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                            )
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                            )
                        ),
                        hintText: widget.searchFieldText,
                        hintStyle: TextStyle(
                            color: Colors.white
                        )
                    ),
                )
            );
    }

    Widget _getSearchIcon() {
        return IconButton(
            icon: Icon(
                Icons.search,
                color: Colors.white
            ),
            onPressed: () {
                setState(() {
                    _isSearching = !_isSearching;
                });
            },
        );
    }

    Widget _getClearIcon() {
        return IconButton(
            icon: Icon(
                Icons.clear,
                color: Colors.white
            ),
            onPressed: () {
                _textFieldController.clear();
            },
        );
    }

    Widget _getBackButton() {
        return IconButton(
            icon: Icon(
                Icons.arrow_back,
                color: Colors.white
            ),
            onPressed: () {
                _textFieldController.clear();

                setState(() {
                    _isSearching = !_isSearching;
                });
            },
        );
    }

    /*Observable<String> getTextObservable() {
        return _textFieldObservable
            .distinct()
            .where((text) {
                return text.isNotEmpty && text.length >= 3;
            }).debounce(Duration(milliseconds: 300));
    }*/
}