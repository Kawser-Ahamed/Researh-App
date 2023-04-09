import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';

class MemoryTestResource1{
  
  //Element 1

  GlobalKey<FlipCardState> element1Card = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> element2Card = GlobalKey<FlipCardState>();
  bool checkElement1 = false;
  bool checkElement2 = false;
  String element1 = "1";
  String element2 = "2";

  void flipElement1(){
    print('call');
    Timer(const Duration(seconds: 3), (){
      if((element1 == "element1" && element2 != "element2") && checkElement1 == true){
      element1Card.currentState!.toggleCard();
    }
    else{
      // element1 = "1";
      // element2 = "2";
    }
    });
  }
  void flipElement2(){
    print('call');
    Timer(const Duration(seconds: 3), (){
      if((element2 == "element2" && element1 != "element1") && checkElement2 == true){
      element2Card.currentState!.toggleCard();
    }
    else{
      element1 = "1";
      element2 = "2";
    }
    });
  }

}