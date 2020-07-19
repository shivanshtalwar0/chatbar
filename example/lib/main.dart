import 'package:chatbar/chatbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  void show() {
    final context = navigatorKey.currentState.overlay.context;
    final dialog = AlertDialog(
      content: Container(
        child: Image.network(
            "https://scontent.fdel8-1.fna.fbcdn.net/v/t1.0-9/55786278_1694407227328700_8743813181337501696_n.jpg?_nc_cat=101&_nc_oc=AQnH_MY2ofbfcVeo2-QeS6P10Kg88RnI_zTh78UQGpzY8wVasLyF4hF2_JH0bOB2b8c&_nc_ht=scontent.fdel8-1.fna&oh=ec6eedc22c681f49fa96714991fca364&oe=5D9BC9A5"),
      ),
    );
    showDialog(context: context, builder: (x) => dialog);
  }
  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
        appBar: ChatBar(
          onprofileimagetap: () => show(),
          profilePic: Image.network(
            'https://lh3.googleusercontent.com/proxy/wRhhKOz4fdOYlT-mUGTOYJrhTqr3VJ9B9A9hMbvFLRZ-PYlpeY-FRrEIwEvWkkk1wm3iYjhRfWctbG4wDw5XMn1GX6A7TBWeM6ybWnC4QH-iilfTtjKA',
            height: 50,
            width: 50,
            fit: BoxFit.contain,
          ),
          username: "Shivansh Talwar",
          status: Text(''),
          color: Colors.green.shade400,
          backbuttoncolor: Colors.white,
          backbutton: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {},
            color: Colors.white,
          ),
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
