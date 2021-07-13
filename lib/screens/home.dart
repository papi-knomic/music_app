import 'package:flutter/material.dart';
import 'package:music_app/lists/genre_list.dart';
import 'package:music_app/lists/playlist.dart';
import 'package:music_app/lists/recent_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hello, Somto',
              style: TextStyle(color: Colors.amber, fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            Recent(),
            SizedBox(
              height: 10,
            ),
            Genre(),
            SizedBox(
              height: 10,
            ),
            Playlist()
          ],
        ),
      ),
    );
  }
}
