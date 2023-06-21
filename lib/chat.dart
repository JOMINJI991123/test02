import 'package:flutter/material.dart';
import 'home.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> messages = [
    "안녕하세요",
    "물건있나요?",
  ];
  List<String> people_name = [
    "조민지",
    "조민서",
  ];
  // ignore: non_constant_identifier_names
  List<String> people_img = [
    "assets/items/people_img.png",
    "assets/items/people_img.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('채팅'),
      ),
      body: ListView.builder(
        itemCount: people_name.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(people_img[index]),
            ),
            title: Text(people_name[index]),
            subtitle: Text(messages[index]),
            onTap: () {
            },
          );
        },
      ),
    );
  }
}

