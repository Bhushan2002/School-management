import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:school_management_system/constant/lists.dart';
import 'package:school_management_system/constant/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          child: Column(
            children: [Text("profile")],
          ),
        ),
        key: scaffoldKey,
        backgroundColor: Color(0xffF5F5F5),
        appBar: appBar(context, scaffoldKey),
        body: SingleChildScrollView(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 2,
            ),
            itemCount: CTG_title.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: GridTile(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, CTG_pages[index]);
                  },
                  child: Container(
                    color: Colors.blueGrey,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(
                          //   CTG_icons[index],
                          //   size: 50,
                          //   color: Colors.white,
                          // ),
                          Expanded(
                            child: Lottie.asset('assets/lottie/classroom.json',
                                frameRate: FrameRate(50)),
                          ),
                          Text(
                            CTG_title[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              );
            },
          ),
        ),
      ),
    );
  }
}
