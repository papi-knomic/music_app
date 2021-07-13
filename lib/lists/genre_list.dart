import 'package:flutter/material.dart';
import 'package:music_app/models/genre.dart';

class Genre extends StatefulWidget {
  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {
  List<GenreModel> genre = [
    GenreModel(color: Colors.orange, title: 'Afrobeats'),
    GenreModel(color: Colors.purple, title: 'Pop'),
    GenreModel(color: Colors.blue, title: 'Hip Hop'),
    GenreModel(color: Colors.red, title: 'Rock'),
    GenreModel(color: Colors.yellow, title: 'EDM'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Genres',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Container(
          height: 90,
          child: ListView.builder(
              itemCount: genre.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 2),
                  child: Card(
                    color: genre[index].color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        genre[index].title,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
