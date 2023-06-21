import 'package:flutter/material.dart';
class likey extends StatefulWidget {
  const likey({Key? key}) : super(key: key);

  @override
  State<likey> createState() => _likeyState();
}

class _likeyState extends State<likey> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("좋아요"),
        ),

    );
  }
}
