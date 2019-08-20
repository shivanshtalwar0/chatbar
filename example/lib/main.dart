import 'package:flutter/material.dart';
import 'package:chatbar/chatbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ChatBar(
          username: "Shivansh Talwar",
          status: ChatBarState.ACTIVE,
          color: Colors.green.shade400,
          backbuttoncolor: Colors.white,
          backbutton: IconButton(icon: Icon(Icons.keyboard_arrow_left), onPressed:(){},color:Colors.white,),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.videocam),
            color: Colors.white,
            ),
            PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              enabled: true,
              onSelected: (str) {},
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                const PopupMenuItem<String>(
                  value: 'View Contact',
                  child: Text('View Contact'),
                ),
                const PopupMenuItem<String>(
                  value: 'Media',
                  child: Text('Media'),
                ),
                const PopupMenuItem<String>(
                  value: 'Search',
                  child: Text('Search'),
                ),
                const PopupMenuItem<String>(
                  value: 'Wallpaper',
                  child: Text('Wallpaper'),
                ),
              ],
            )
          ],
        ),
        body: Center(
          child: Text(''),
        ),
      ),
    );
  }
}
