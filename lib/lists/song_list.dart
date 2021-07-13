import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:music_app/models/song.dart';

class Song extends StatefulWidget {
  @override
  _SongState createState() => _SongState();
}

class _SongState extends State<Song> {
  List<SongModel> song = [
    SongModel(artist: 'Wizkid', title: 'Gyrate', image: 'images/Wizkid.jpg'),
    SongModel(
        artist: 'The Weeknd',
        title: 'Blinding Lights',
        image: 'images/afterhours.png',
        playing: true),
    SongModel(artist: 'Beyonce', title: 'XO', image: 'images/beyonce.png'),
    SongModel(
        artist: 'Olivia Rodrigo',
        title: 'Deja Vu',
        image: 'images/olivia_rodrigo.jpg'),
    SongModel(
        artist: 'Doja Cat', title: 'Streets', image: 'images/doja_cat.jpg'),
    SongModel(
        artist: 'Rema', title: 'Soundgasm', image: 'images/soundgasm.jpeg'),
    SongModel(
        artist: 'Burna Boy', title: 'Spiritual', image: 'images/burna.png'),
    SongModel(
        artist: 'Knomic', title: 'Hasta Luego', image: 'images/knomic.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Card(
              color: song[index].playing ? Colors.greenAccent : Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/${song[index].image}'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song[index].title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              song[index].artist,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(
                          LineIcons.verticalEllipsis,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: song.length,
      ),
    );
  }
}
