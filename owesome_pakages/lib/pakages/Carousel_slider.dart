import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class package1 extends StatefulWidget {
  const package1({Key? key}) : super(key: key);

  @override
  State<package1> createState() => _package1State();
}

class _package1State extends State<package1> {

  List <String> images = ['assets/moiz1.jpg','assets/moiz2.jpg','assets/moiz3.jpg','assets/moiz4.jpg','assets/moiz5.jpg','assets/moiz6.jpg','assets/moiz7.jpg','assets/moiz8.jpg','assets/moiz9.jpg','assets/moiz10.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Crosel slider")),
        body: Center(
          child: CarouselSlider(items: [
            ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[0],fit: BoxFit.cover,),),
             ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[1],fit: BoxFit.cover,),),
              ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[2],fit: BoxFit.cover,),),
               ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[3],fit: BoxFit.cover,),),
                ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[4],fit: BoxFit.cover,),),
                 ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[5],fit: BoxFit.cover,),),
                  ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[6],fit: BoxFit.cover,),),
                   ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[7],fit: BoxFit.cover,),),
                    ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[8],fit: BoxFit.cover,),),
                      ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[9],fit: BoxFit.cover,),),
          ],
          /*
          items: images.map((e){
            return ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(images[e],fit: BoxFit.cover,),);
          }).toList(),*/
            //options for design and task for performing/or to control slider
            options: CarouselOptions(
              aspectRatio: 1/1.0, //with into hieght ratio
              viewportFraction: 0.7,  //to show another images also
              reverse: true,  //reverce from end to start
              autoPlay: true, //slide auto play   for false its a manual we move it by own
              autoPlayInterval: Duration(seconds: 2),
              enlargeCenterPage: true,  //main image is bigger than all
              pageSnapping: true,
          
            
            ),
          )
        ),
    );
  }
}