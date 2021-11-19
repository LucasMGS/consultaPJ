import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final Function(String) getQuery;
  const SearchBar({Key? key, required this.getQuery}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController _queryController;

  @override
  void initState() {
    super.initState();
    _queryController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: TextField(
              controller: _queryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '66.604.118/0001-37',
                alignLabelWithHint: true,
                // isDense: true,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.orange),
              child: Icon(Icons.search),
              onPressed: () {
                widget.getQuery(_queryController.text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
