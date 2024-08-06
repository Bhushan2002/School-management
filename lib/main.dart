import 'package:flutter/material.dart';
import 'package:school_management_system/pages/auth/login_page.dart';
import 'package:school_management_system/pages/auth/register_page.dart';
import 'package:school_management_system/pages/categories/assignment_page.dart';
import 'package:school_management_system/pages/categories/attendence_page.dart';
import 'package:school_management_system/pages/categories/classroom_page.dart';
import 'package:school_management_system/pages/categories/fees_page.dart';
import 'package:school_management_system/pages/categories/lecture_page.dart';
import 'package:school_management_system/pages/categories/libaray_page.dart';
import 'package:school_management_system/pages/categories/marks_page.dart';
import 'package:school_management_system/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'school management system',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          login: (context) => LoginPage(),
          register: (context) => RegisterPage(),
          assignmentP: (context) => AssignmentPage(),
          attendanceP: (context) => AttendancePage(),
          classroomP: (context) => ClassroomPage(),
          feesP: (context) => FeesPage(),
          lectureP: (context) => LecturePage(),
          libraryP: (context) => LibarayPage(),
          marksP: (context) => MarksPage(),
        });
  }
}
