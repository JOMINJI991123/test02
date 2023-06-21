
import 'package:flutter/material.dart';
import 'chat.dart';
import 'likey.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      _ChatAction();
    }else if (index == 2) {
      _LikeAction();
    }
  }

  void _ChatAction() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Chat()),
    );
  }


  void _LikeAction() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const likey()),
    );}

  Widget _bottomNavigationBarW() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          label: "채팅",),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "홈",),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: "좋아요",),
      ],
    );
  }

  //리스트
  List<String> itemList = [
    'assets/items/s.webp',
    'assets/items/hood.jpg',
    'assets/items/food.jpg',
    'assets/items/chair.jpg',
    'assets/items/tab.jpg',
  ];
  List<String> priceList = [
    "11,000",
    "5,000",
    "11,000",
    "3,000",
    "300,000"
  ];
  List<String> nameList = [
    '운동화 팝니다',
    '후드티',
    '기프티콘',
    '의자',
    '탭',
  ];

  List<bool> likeList=[
    false,
    false,
    false,
    false,
    false,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children:[
            Text("주례동",style: TextStyle(color: Colors.white),),
            Icon(Icons.arrow_drop_down),
          ],),
      backgroundColor: Colors.orange,
        actions: [],
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Container(
            height:130,
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 0,

              leading: SizedBox(
                width: 100,
                height: double.infinity,
                child: Image.asset(
                  itemList[index],
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(nameList[index]),
              subtitle: Text(priceList[index]),
              trailing: IconButton(
                icon: Icon(
                  likeList[index] ? Icons.favorite : Icons.favorite_border,
                ),
                onPressed: () {
                  setState(() {
                    likeList[index] = !likeList[index];
                  });
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: _bottomNavigationBarW(),
    );
  }
}




