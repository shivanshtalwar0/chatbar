import 'package:flutter/material.dart';

enum ChatBarState { ONLINE, OFFLINE, TYPING, ACTIVE, LASTSEEN }

Image image = Image.network("");

class ChatBar extends StatelessWidget implements PreferredSizeWidget {
  final Image profilePic;
  final String username;
  final Widget status;
  final double height;
  final Gradient gradient;
  final Color color;
  final Color backbuttoncolor;
  final IconButton backbutton;
  final List<Widget> actions;
  final int actionspacer;
  final TextStyle usernamestyle;
  final TextStyle statusstyle;
  final String lastseen;
  final Function onprofileimagetap;

  @override
  Size get preferredSize => Size.fromHeight(height);

  ChatBar(
      {Key key,
      this.onprofileimagetap,
      this.gradient,
      this.lastseen,
      this.backbutton,
      this.backbuttoncolor = Colors.white,
      this.color,
      this.usernamestyle,
      this.statusstyle,
      this.actionspacer = 1,
      this.height = 70,
      @required this.username,
      @required this.actions,
      @required this.profilePic,
      @required this.status})
      : assert(profilePic != null, 'profile pic should not be null'),
        assert(status != null, 'status should not be null'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
          color: color,
          gradient: gradient != null ? gradient : null,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)]),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          backbutton != null
              ? backbutton
              : BackButton(
                  color: backbuttoncolor,
                ),
          GestureDetector(
            child: ClipRRect(
                borderRadius: new BorderRadius.circular(30.0),
                child: profilePic),
            onTap: onprofileimagetap,
          ),
          SizedBox(
            width: 7.0,
          ),
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    username,
                    style: usernamestyle != null
                        ? usernamestyle
                        : TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: status,
                  )
                ],
              )),
          ...actions.map((wid) {
            return Expanded(
              child: wid,
              // ignore: sdk_version_ui_as_code
            );
          }).toList(),
        ],
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(5),
    );
  }
}
