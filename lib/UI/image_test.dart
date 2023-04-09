import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:research2/Resources/image_test_resource.dart';
import 'package:research2/routes/route.dart';


class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {

int second = 15;
late Timer timer;

void startTimer(){
  timer = Timer.periodic(const Duration(seconds: 1), (timer) { 
    setState(() {
      second--;
      if(second<=0){
        second = 0;
      }
    });
  });
}

Random random = Random();

@override
  void initState() {
    startTimer();
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
              const SizedBox(height: 10,),
              // ignore: prefer_const_constructors
              (second>0) ? ImageTestResource() : Container(),
            ]
          ),
        ),
      ),
    );
  }
}