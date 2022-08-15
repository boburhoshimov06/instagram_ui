import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined),
          color: Colors.white,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.tv),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: ((i) {
          setState(() {
            currentPage = i;
          });
        }),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            label: ('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: ('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.grey,
            ),
            label: ('Upload'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.grey,
            ),
            label: ('Like'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.grey,
            ),
            label: ('Settings'),
          ),
        ],
      ),
    );
  }
}
