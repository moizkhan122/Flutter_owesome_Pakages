import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class lotieanimate extends StatefulWidget {
  const lotieanimate({Key? key}) : super(key: key);

  @override
  State<lotieanimate> createState() => _lotieanimateState();
}

class _lotieanimateState extends State<lotieanimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
        return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('lottieanimations/${index+1}.json',
          height: 300,
          reverse: true,
          repeat: true,
          fit: BoxFit.cover
          ),

       

        ],);
      })
    );
  }
}/*
 SizedBox(height: 20,),
        Text(title[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(desc[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        )*/