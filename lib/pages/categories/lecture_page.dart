import 'package:flutter/material.dart';
const String lectureP = "/lecture" ;
class LecturePage extends StatefulWidget {
  const LecturePage({super.key});

  @override
  State<LecturePage> createState() => _LecturePageState();
}

class _LecturePageState extends State<LecturePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("lecture page"),
        ),
      ),
    );
  }
}