import 'package:flutter/material.dart';
const String libraryP = "/library" ;
class LibarayPage extends StatefulWidget {
  const LibarayPage({super.key});

  @override
  State<LibarayPage> createState() => _LibarayPageState();
}

class _LibarayPageState extends State<LibarayPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Library Page"),
        ),
      ),
    );
  }
}
