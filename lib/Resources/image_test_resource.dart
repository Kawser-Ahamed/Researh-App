import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class ImageTestResource extends StatefulWidget {
  const ImageTestResource({super.key});

  @override
  State<ImageTestResource> createState() => _ImageTestResourceState();
}

class _ImageTestResourceState extends State<ImageTestResource> {

int index =0;
int height = 0;
int width = 120;
  List<String> images =[
    "assets/images/Umbrela.jpg",
    "assets/images/cycle.jpg",
    "assets/images/elephant.jpg",
    "assets/images/straw.jpg",
    "assets/images/Tomato.png",
  ];
  Random random = Random();
  void startIndex(){
    setState(() {
      Timer.periodic(const Duration(seconds: 3), (timer) { 
        height = random.nextInt(460);
        width = random.nextInt(200);
        index++;
        if(index>=images.length){
          index=0;
        }
      });  
    });
  }

  @override
  void initState() {
    startIndex();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 660,
      width: 400,
      color: Colors.transparent,
      child: Stack(
       children: [
        Positioned(
          top:height.toDouble(),
          left: width.toDouble(),
          child: Image(
            image: AssetImage(images[index]),
            height: 200,
            width: 200,
          ),
        ),
       ],
      ),
    );
  }
}