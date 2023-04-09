import 'dart:async';

import 'package:flutter/material.dart';
import 'package:research2/routes/route.dart';

class ColorTest extends StatefulWidget {
  const ColorTest({super.key});

  @override
  State<ColorTest> createState() => _ColorTestState();
}

class _ColorTestState extends State<ColorTest> {

int second = 30;
int index = 0;

void startTime(){
  Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      second--;
      if(second<=0){
        second=0;
      }
    });
   });

   Timer.periodic(const Duration(seconds: 3), (timer) { 
    setState(() {
      index++;
      if(index>=map.length){
        index=0;
      }
    });
   });
}


Map<String,Color> map ={
  "red" : Colors.purple,
   "black" : Colors.blue,
   "orange" : Colors.green,
   "green" : Colors.deepOrangeAccent,
   "Red" : Colors.blue,
   "Orange" : Colors.deepPurple,
   "yellow" : Colors.green,
   "purple" : Colors.black,
   "Black" : Colors.tealAccent,
   "pink" : Colors.red,
};

@override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoute.homePage);
                   },
                   child: const Text("Back",
                   style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(166, 207, 207, 11),
                        ),
                   )
                   ),
                   Text('$second',
                   style: const TextStyle(
                        fontSize: 30,  
                      ),
                   ),
                   TextButton(
                    onPressed: (){

                   },
                   child: const Text("Submit",
                   style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(166, 207, 207, 11),
                        ),
                    ),
                   ),
                ],
              ),
              const SizedBox(height: 270),
              (second>0) ? Text(map.keys.elementAt(index),
              style: TextStyle(
                fontSize: 50,
                color: map.values.elementAt(index),
              ),
              ) : const Text("Color Test Is Over",
               style: TextStyle(
                fontSize: 25,
                color: Colors.deepPurple,
              ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
