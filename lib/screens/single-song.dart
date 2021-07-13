import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:line_icons/line_icons.dart';

class SingleSong extends StatefulWidget {
  @override
  _SingleSongState createState() => _SingleSongState();
}

class _SingleSongState extends State<SingleSong> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/afterhours.png'),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        Text(
                          'Now Playing',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
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
                      children: [
                        Text(
                          'Blinding Lights',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlatButton.icon(
                              shape: CircleBorder(),
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 30,
                              ),
                              label: Text(''),
                            ),
                            Text(
                              'The Weeknd',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            FlatButton.icon(
                              shape: CircleBorder(),
                              onPressed: () {},
                              icon: Icon(
                                LineIcons.heartAlt,
                                size: 30,
                                color: Colors.red,
                              ),
                              label: Text(''),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LinearProgressIndicator(
                    value: 0.33,
                    backgroundColor: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1:17',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '3:20',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 50,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.pause_circle_outline,
                            color: Colors.greenAccent,
                            size: 50,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 50,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Boxicons.bx_shuffle,
                            size: 30,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            FeatherIcons.repeat,
                            size: 30,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
