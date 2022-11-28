
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class animatedrawer extends StatefulWidget {
  const animatedrawer({Key? key}) : super(key: key);

  @override
  State<animatedrawer> createState() => _animatedrawerState();
}

class _animatedrawerState extends State<animatedrawer> {
  @override
  Widget build(BuildContext context) {
      return const ZoomDrawer(
        drawerShadowsBackgroundColor: Colors.grey,
         borderRadius: 24.0,
        showShadow: true,
        moveMenuScreen: true,
        mainScreen :mainpage(),
        menuScreen: menupage(),
        angle: -18,
        duration: Duration(milliseconds: 200),

      );
  }
}
//main page
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: (){
            ZoomDrawer.of(context)!.toggle(); //main line for zoomdrawer
          },
          icon: Icon(Icons.menu)),
      ),
      body: Center(child: Text("Animated Drawer",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),),
    );

  }
}
  //menu page
class menupage extends StatefulWidget {
  const menupage({Key? key}) : super(key: key);

  @override
  State<menupage> createState() => _menupageState();
}

class _menupageState extends State<menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          SizedBox(height: 80,),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(radius: 60,backgroundImage: AssetImage("assets/moiz1.jpg"),)),
            SizedBox(height: 20,),
            Text("Moiz khan..",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            Row(children: [
              Icon(Icons.home,size: 25,),SizedBox(width: 7,),
              Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
            SizedBox(height: 20,),
            Row(children: [
              Icon(Icons.person,size: 25,),SizedBox(width: 7,),
              Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
            SizedBox(height: 20,),
            Row(children: [
              Icon(Icons.post_add,size: 25,),SizedBox(width: 7,),
              Text("Posts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
            SizedBox(height: 20,),
            Row(children: [
              Icon(Icons.settings,size: 25,),SizedBox(width: 7,),
              Text("Setting",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
            
          SizedBox(height: 70,),
            Row(children: [
              Icon(Icons.question_mark,size: 25,),SizedBox(width: 7,),
              Text("Any Issue",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],),

             SizedBox(height: 20,),
            Row(children: [
              Icon(Icons.logout,size: 25,),SizedBox(width: 7,),
              Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
        ],
      ),
    );
  }
}