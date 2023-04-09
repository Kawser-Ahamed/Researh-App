import 'dart:async';

import 'package:flutter/material.dart';
import 'package:research2/Resources/target_game_resource.dart';
import 'package:research2/routes/route.dart';

class TargetGame extends StatefulWidget {
  const TargetGame({super.key});

  @override
  State<TargetGame> createState() => _TargetGameState();
}

class _TargetGameState extends State<TargetGame> {

int second = 20;

void startTime(){
  Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      second--;
      if(second<=0){
        second=0;
      }
    });
   });
}

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
                   )
                   ),
                ],
              ),
              // ignore: prefer_const_constructors
              (second>0) ? TargetGameResource() : Container(),
            ],
          ),
        ),
      ),
    );
  }
}