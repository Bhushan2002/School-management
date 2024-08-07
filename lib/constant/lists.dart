import 'package:flutter/material.dart';
import 'package:school_management_system/pages/categories/assignment_page.dart';
import 'package:school_management_system/pages/categories/attendence_page.dart';
import 'package:school_management_system/pages/categories/lecture_page.dart';
import 'package:school_management_system/pages/categories/libaray_page.dart';
import 'package:school_management_system/pages/categories/marks_page.dart';

import '../pages/categories/classroom_page.dart';
import '../pages/categories/fees_page.dart';

const List CTG_image = [
  'assets/image/classroom.png',
  'assets/image/assignment.png',
  'assets/image/attendance.png',
  'assets/image/marks.png',
  'assets/image/lectures.png',
  'assets/image/fees.png',
  'assets/image/library.png',
];
const List CTG_icons = [
  Icons.dvr,
  Icons.auto_stories,
  Icons.co_present,
  Icons.book,
  Icons.tv,
  Icons.currency_rupee,
  Icons.library_add
];
const List CTG_title = [
  "Classrooms",
  "Assignment",
  "Attendence",
  "Marks",
  "Lectures",
  "Fees",
  "Library"
];

const List CTG_pages = [
  classroomP,
  assignmentP,
  attendanceP,
  marksP,
  lectureP,
  feesP,
  libraryP,
];
