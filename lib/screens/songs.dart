import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:music_app/lists/song_list.dart';
import 'package:music_app/screens/single-song.dart';

class Songs extends StatefulWidget {
  _SongsState createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/images/fave.jpg'),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlatButton.icon(
                            shape: CircleBorder(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 30,
                            ),
                            label: Text(''),
                          ),
                          FlatButton.icon(
                            shape: CircleBorder(),
                            onPressed: () {},
                            icon: Icon(
                              LineIcons.verticalEllipsis,
                              size: 30,
                              color: Colors.white,
                            ),
                            label: Text(''),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Favourite Songs',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '8 Songs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FlatButton.icon(
                                label: Text(''),
                                icon: Icon(Icons.play_circle_fill_rounded,
                                    size: 70, color: Colors.greenAccent),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SingleSong()));
                                },
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ),
            Song(),
          ],
        ),
      ),
    );
  }
}
