import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:glassmorphism/glassmorphism.dart';

class glasskit extends StatefulWidget {
  const glasskit({Key? key}) : super(key: key);

  @override
  State<glasskit> createState() => _glasskitState();
}

class _glasskitState extends State<glasskit> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(child: Image.asset("assets/bubble.jpg",fit: BoxFit.cover,)),
            ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 15),
              children: [

                SizedBox(height: 50,),
                Center(child:Text("Glass Morphism",
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                )),
                SizedBox(height: 20,),

                  GlassmorphicContainer(
                  width: double.infinity,
                  height: 250,
                  borderRadius: 20,
                  blur: 0,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.5),
                      Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: mycard(),
                ),

                   SizedBox(height: 15,),
                Center(child:Text("Glass Kit",
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                )),
                GlassContainer(
                        width: double.maxFinite,
                        height: 250,
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Colors.white.withOpacity(0.40), Colors.white.withOpacity(0.10)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderGradient: LinearGradient(
                          colors: [Colors.white.withOpacity(0.60), Colors.white.withOpacity(0.10), Colors.lightBlueAccent.withOpacity(0.05), Colors.lightBlueAccent.withOpacity(0.6)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 0.39, 0.40, 1.0],
                        ),
                        blur: 15.0,
                        borderWidth: 1.5,
                        elevation: 3.0,
                        isFrostedGlass: true,
                        shadowColor: Colors.black.withOpacity(0.20),
                        alignment: Alignment.center,
                        frostedOpacity: 0.12,
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(8.0),
                        child: mycard(),
                      ),
                    ],
                  ),
                ],
              ),
            );
        }
      }
class mycard extends StatelessWidget {
  const mycard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      
      elevation: 0,
      //shadowColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("VISA",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)],),
            SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Flutter Fly Bank",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 6,),
            Row(children: [
              Icon(Icons.numbers,color: Colors.white),
              SizedBox(width: 15,),
              Text("345-344-23456-6553",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)],),
              SizedBox(height: 6,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Text("valid from 23/2",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Text("valid to 25/2",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              ],),
              SizedBox(height: 6,),
             Row(
            mainAxisAlignment: MainAxisAlignment.start,  
             children: [
                 Text("Holder Flutter Fly",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
               ],
             )
          ],
        ),
      ),
    );
  }
}