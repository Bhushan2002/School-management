import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/pages/auth/login_page.dart';

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
            key.currentState?.openEndDrawer();
          },
          icon: Icon(Icons.menu)),
    ],
  );
}

TextStyle custTextStyle(double size, FontWeight w) {
  return GoogleFonts.lato(fontSize: size, fontWeight: w, color: Colors.black);
}

Widget custDrawer(BuildContext context) {
  return Drawer(
    width: 350,
    child: Stack(
      children: [
        Positioned(
          top: 10,
          right: 7,
          child: GestureDetector(
            onTap: () {
              // edit page
            },
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade100,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.edit_outlined,
                size: 40,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 45.0),
                  child: Image.asset(
                    'assets/image/profile.png',
                    height: 250,
                  ),
                ),
                Divider(
                  height: 2,
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text(
                        "Student Name",
                        style: custTextStyle(20, FontWeight.w800),
                      ),
                      subtitle: Text(
                        'Bhushan Ajay Waghode',
                        style: custTextStyle(18, FontWeight.normal),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Enrollment Number",
                        style: custTextStyle(20, FontWeight.w800),
                      ),
                      subtitle: Text(
                        'ADT23MGTM0921',
                        style: custTextStyle(18, FontWeight.normal),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Phone Number",
                        style: custTextStyle(20, FontWeight.w800),
                      ),
                      subtitle: Text(
                        '9421444629',
                        style: custTextStyle(18, FontWeight.normal),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "view profile",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue.shade100, // background color
                        foregroundColor: Colors.blue, // text color
                        shadowColor: Colors.black, // shadow color
                        elevation: 5, // elevation of the button
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5), // rounded corners
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10), // padding
                      ),
                    ),
                    Divider(
                      height: 20,
                    ),
                    drawerListTiles(Icons.favorite, "favorite", () {}),
                    drawerListTiles(Icons.notifications, "Notification", () {}),
                    drawerListTiles(Icons.feedback, "Feedback", () {}),
                    drawerListTiles(Icons.color_lens, "change theme", () {}),
                    drawerListTiles(Icons.key, "change password", () {}),
                    drawerListTiles(Icons.login, "login",
                        () => Navigator.pushNamed(context, login)),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget drawerListTiles(IconData icon, title, VoidCallback? func) {
  return GestureDetector(
    onTap: func,
    child: ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: custTextStyle(18, FontWeight.normal),
      ),
    ),
  );
}
