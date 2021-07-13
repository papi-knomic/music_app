import 'package:flutter/material.dart';
import 'package:music_app/screens/songs.dart';

class Fave extends StatefulWidget {
  @override
  _FaveState createState() => _FaveState();
}

class _FaveState extends State<Fave> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Songs()));
                  },
                  title: Text(
                    'Favorite Songs',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.grey[900],
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Downloaded',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.grey[900],
                  trailing: Icon(
                    Icons.download_done_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
