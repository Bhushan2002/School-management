import 'package:flutter/material.dart';

const String marksP = "/marks";

class MarksPage extends StatefulWidget {
  const MarksPage({super.key});

  @override
  State<MarksPage> createState() => _MarksPageState();
}

class _MarksPageState extends State<MarksPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Marks page"),
      ),
    ));
  }
}
