import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
   int _currentPage = 0;
  final  _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(color: Colors.deepPurple,child: Center(child: Text("page1",style: TextStyle(fontSize: 40),)),),
          Container(color: Colors.green,child: Center(child: Text("page2",style: TextStyle(fontSize: 40),)),),
          Container(color: Colors.yellow,child: Center(child: Text("page3",style: TextStyle(fontSize: 40),)),),
          Container(color: Colors.pink,child: Center(child: Text("page4",style: TextStyle(fontSize: 40),)),),
        ],
        onPageChanged: (index){
          setState(() {
            _currentPage = index;
          });
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap:(int index){
                _pageController.jumpToPage(index);
                setState(() {
                  _currentPage = index;
                });
              },
          items: [
              BottomBarItem(icon: Icon(Icons.home),
               activeColor: Colors.purple,title: Text("Home")),
                BottomBarItem(icon: Icon(Icons.favorite),
               activeColor: Colors.green,title: Text("Favorites")),
                BottomBarItem(icon: Icon(Icons.person),
               activeColor: Colors.yellow,title: Text("Account")),
                BottomBarItem(icon: Icon(Icons.settings),
               activeColor: Colors.purple,title: Text("Setting")),
          ],
      ),
    );
  }
  }