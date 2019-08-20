import 'package:flutter/material.dart';

enum ChatBarState { ONLINE, OFFLINE, TYPING,ACTIVE,LASTSEEN }

const defaultprofile =
    "https://scontent.fdel8-1.fna.fbcdn.net/v/t1.0-9/55786278_1694407227328700_8743813181337501696_n.jpg?_nc_cat=101&_nc_oc=AQnH_MY2ofbfcVeo2-QeS6P10Kg88RnI_zTh78UQGpzY8wVasLyF4hF2_JH0bOB2b8c&_nc_ht=scontent.fdel8-1.fna&oh=ec6eedc22c681f49fa96714991fca364&oe=5D9BC9A5";

class ChatBar extends StatelessWidget implements PreferredSizeWidget {
  final String profilePic;
  final String username;
  final ChatBarState status;
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

  @override
  Size get preferredSize => Size.fromHeight(height);

  ChatBar(
      {Key key,
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
      this.profilePic = defaultprofile,
      @required this.status})
      : super(key: key);

  String getstatus(status) {
    String retdata = "";
    switch (status) {
      case ChatBarState.ONLINE:
        retdata = "Online";
        break;
      case ChatBarState.OFFLINE:
        retdata = "";
        break;
      case ChatBarState.TYPING:
        retdata = "Typing";
        break;
      case ChatBarState.ACTIVE:
        retdata = "Active";
        break;
      case ChatBarState.LASTSEEN:
        retdata = "Last Seen "+lastseen;
        break;
    }
    return retdata;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
        color: color,
        gradient: gradient!=null?gradient:null,
        boxShadow: [BoxShadow(color:Colors.grey,blurRadius:2.0)]
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          backbutton!=null?backbutton:BackButton(
            color: backbuttoncolor,
          ),
          ClipRRect(
              borderRadius: new BorderRadius.circular(30.0),
              child: Image.network(
                profilePic,
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: 7.0,
          ),
          Expanded(
              flex:4,
              child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
                child: Text(
                  getstatus(status),
                  style: statusstyle != null
                      ? statusstyle
                      : TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
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
      padding: EdgeInsets.only(top: 25),
    );
  }
}
