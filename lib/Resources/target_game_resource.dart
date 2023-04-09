import 'dart:math';

import 'package:flutter/material.dart';

class TargetGameResource extends StatefulWidget {
  const TargetGameResource({super.key});

  @override
  State<TargetGameResource> createState() => _TargetGameResourceState();
}

class _TargetGameResourceState extends State<TargetGameResource> {

int top = 20,left = 20;
Random random = Random();

void setPosition(){
  setState(() {
    top = random.nextInt(600);
    left = random.nextInt(340);
  });
}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 660,
      width: 400,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              setPosition();
            },
            child: Container(
              margin:  EdgeInsets.only(top: top.toDouble(),left: left.toDouble()),
              height: 50,
              width: 50,   
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 50, 78, 235),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Center(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                 ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}