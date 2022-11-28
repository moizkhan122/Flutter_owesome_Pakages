import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class slidable1 extends StatefulWidget {
  const slidable1({Key? key}) : super(key: key);

  @override
  State<slidable1> createState() => _slidable1State();
}

class _slidable1State extends State<slidable1> {
  List<String> names = ['moiz','mateen','ameen','wahab','aqib','yasir','sameed','fizza','emaan','mateen','wahab','haziq'];
  List<String> numbers = ['03111086990','03111086990','03111086990','03111086990','03111086990','03111086990','03111086990','03111086990','03111086990','03111086990','03111086990','03111086990']; 

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: names.length,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
            child: Slidable(
                startActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(onPressed: (context){},
                    icon: Icons.call,
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    label: 'Call',
                    ),
                    SlidableAction(onPressed: (context){},
                    icon: Icons.email,
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    label: 'Email',
                    )
                  ],
                  ),
                endActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(onPressed: (context){},
                    icon: Icons.delete,
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    label: 'delete',
                    )
                  ],
                  ),

              child: Card(
                elevation: 10,
                child: ListTile(
                  iconColor: Colors.grey,
                  textColor: Colors.green,
                  leading: Icon(Icons.home),
                  title: Text(names[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  subtitle: Text(numbers[index],style: TextStyle(fontSize: 17)),
                ),
              ),
            ),
          );
        }),
      );
  }
}