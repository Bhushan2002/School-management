import 'package:flutter/material.dart';

AppBar appBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  return AppBar(
    toolbarHeight: 80,
    // backgroundColor: Colors.blueGrey.shade600,
    title: RichText(
      text: TextSpan(
        text: 'Bhushan Ajay Waghode\n',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
              text: 'ADT23MGTM0921',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              )),
        ],
      ),
    ),
    leading: Padding(
      padding: EdgeInsets.only(left: 3.0),
      child: CircleAvatar(
        radius: 23,
      ),
    ),

    actions: [
      IconButton(
          onPressed: () {
            key.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu)),
    ],
  );
}
