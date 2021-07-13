import 'package:flutter/material.dart';
import 'package:music_app/lists/search_list.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool search = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Enter Title',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Searches',
                  style: TextStyle(color: Colors.white),
                ),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        search = false;
                      });
                    },
                    child: Text(
                      'Clear All',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            Divider(
              color: Colors.white,
              height: 1,
              indent: 0,
              endIndent: 250,
            ),
            search
                ? SearchList()
                : Center(
                    child: Text(
                      'Search Results Will Show Here',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
