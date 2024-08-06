import 'package:flutter/material.dart';
import 'package:school_management_system/constant/widgets.dart';

const String classroomP = "/classroom";

class ClassroomPage extends StatefulWidget {
  const ClassroomPage({super.key});

  @override
  State<ClassroomPage> createState() => _ClassroomPageState();
}

class _ClassroomPageState extends State<ClassroomPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: appBar(context,),
          ),
    );
  }
}
