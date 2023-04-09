import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:research2/routes/route.dart';

class MemoryTest2 extends StatefulWidget {
  const MemoryTest2({super.key});

  @override
  State<MemoryTest2> createState() => _MemoryTest2State();
}

class _MemoryTest2State extends State<MemoryTest2> {
  String front = "assets/images/flower.png";
int second = 3;

  GlobalKey<FlipCardState> element1Card = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> element2Card = GlobalKey<FlipCardState>();
  bool checkElement1 = false;
  bool checkElement2 = false;
  String element1 = "1";
  String element2 = "2";
 
  GlobalKey<FlipCardState> element3Card = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> element4Card = GlobalKey<FlipCardState>();
  bool checkElement3 = false;
  bool checkElement4 = false;
  String element3 = "3";
  String element4 = "4";

  GlobalKey<FlipCardState> element5Card = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> element6Card = GlobalKey<FlipCardState>();
  bool checkElement5 = false;
  bool checkElement6 = false;
  String element5 = "5";
  String element6 = "6";

  
  GlobalKey<FlipCardState> element7Card = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> element8Card = GlobalKey<FlipCardState>();
  bool checkElement7 = false;
  bool checkElement8 = false;
  String element7 = "7";
  String element8 = "8";

  
  GlobalKey<FlipCardState> element9Card = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> element10Card = GlobalKey<FlipCardState>();
  bool checkElement9 = false;
  bool checkElement10 = false;
  String element9 = "9";
  String element10 = "10";

  
  GlobalKey<FlipCardState> element11Card = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> element12Card = GlobalKey<FlipCardState>();
  bool checkElement11 = false;
  bool checkElement12 = false;
  String element11 = "11";
  String element12 = "12";
  


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
              //FlipCard
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 FlipCard(
                    key: element1Card,
                    onFlip: (){
                      element1 = "element1";
                      checkElement1 = !checkElement1;
                      setState(() {
                        
                      });
                      if(checkElement1==true){
                        flipElement1();
                      }
                      else{
                        element1 = "1";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Wrong.png'),
                  ),
                  FlipCard(
                    key: element3Card,
                    onFlip: (){
                      element3 = "element3";
                      checkElement3 = !checkElement3;
                      setState(() {
                        
                      });
                      if(checkElement3==true){
                        flipElement3();
                      }
                      else{
                        element3 = "3";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Leaf.png'),
                  ),
                  FlipCard(
                    key: element5Card,
                    onFlip: (){
                      element5 = "element5";
                      checkElement5 = !checkElement5;
                      setState(() {
                        
                      });
                      if(checkElement5==true){
                        flipElement5();
                      }
                      else{
                        element5 = "5";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Tree.png'),
                  ),
              ],
             ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 FlipCard(
                    key: element2Card,
                    onFlip: (){
                      element2 = "element2";
                      checkElement2 = !checkElement2;
                      setState(() {
                        
                      });
                      if(checkElement2==true){
                        flipElement2();
                      }
                      else{
                        element2 = "2";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Wrong.png'),
                  ),
                  FlipCard(
                    key: element7Card,
                    onFlip: (){
                      element7 = "element7";
                      checkElement7 = !checkElement7;
                      setState(() {
                        
                      });
                      if(checkElement7==true){
                        flipElement7();
                      }
                      else{
                        element7= "7";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Star.png'),
                  ),
                  FlipCard(
                    key: element9Card,
                    onFlip: (){
                      element9 = "element9";
                      checkElement9 = !checkElement9;
                      setState(() {
                        
                      });
                      if(checkElement9==true){
                        flipElement9();
                      }
                      else{
                        element9 = "9";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/LoveRed.png'),
                  ),
               ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlipCard(
                    key: element4Card,
                    onFlip: (){
                      element4 = "element4";
                      checkElement4 = !checkElement4;
                      setState(() {
                        
                      });
                      if(checkElement4==true){
                        flipElement4();
                      }
                      else{
                        element4 = "4";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Leaf.png'),
                  ),
                  FlipCard(
                    key: element10Card,
                    onFlip: (){
                      element10 = "element10";
                      checkElement10 = !checkElement10;
                      setState(() {
                        
                      });
                      if(checkElement10==true){
                        flipElement10();
                      }
                      else{
                        element10 = "10";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/LoveRed.png'),
                  ),
                  FlipCard(
                    key: element11Card,
                    onFlip: (){
                      element11 = "element11";
                      checkElement11 = !checkElement11;
                      setState(() {
                        
                      });
                      if(checkElement11==true){
                        flipElement11();
                      }
                      else{
                        element11 = "11";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Diamond.png'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlipCard(
                    key: element8Card,
                    onFlip: (){
                      element8 = "element8";
                      checkElement8 = !checkElement8;
                      setState(() {
                        
                      });
                      if(checkElement8==true){
                        flipElement8();
                      }
                      else{
                        element8 = "8";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Star.png'),
                  ),
                  FlipCard(
                    key: element6Card,
                    onFlip: (){
                      element6 = "element6";
                      checkElement6 = !checkElement6;
                      setState(() {
                        
                      });
                      if(checkElement6==true){
                        flipElement6();
                      }
                      else{
                        element6 = "6";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Tree.png'),
                  ),
                  FlipCard(
                    key: element12Card,
                    onFlip: (){
                      element12 = "element12";
                      checkElement12 = !checkElement12;
                      setState(() {
                        
                      });
                      if(checkElement12==true){
                        flipElement12();
                      }
                      else{
                        element12 = "12";
                      }
                    },
                    front: customCard(front), 
                    back: customCard('assets/images/Diamond.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customCard(String path){
    return Container(
        margin: const EdgeInsets.only(top:10),
        height: 150,
        width: 100,  
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: 2,
          )
        ),
        child: Image(
          height: 120,
          width: 100,
          image: AssetImage(path)
        ),
    );
  }
  
 void flipElement1(){
    Timer(Duration(seconds: second), (){
      if((element1 == "element1" && element2 != "element2") && checkElement1 == true){
      element1Card.currentState!.toggleCard();
      element1 = "1";
      element2 = "2";
    }
    });
  }
 void flipElement2(){
    Timer(Duration(seconds: second), (){
      if((element2 == "element2" && element1 != "element1") && checkElement2 == true){
      element2Card.currentState!.toggleCard();
      element1 = "1";
      element2 = "2";
     }
    });
  }
 void flipElement3(){
    Timer(Duration(seconds: second), (){
      if((element3 == "element3" && element4 != "element4") && checkElement3 == true){
      element3Card.currentState!.toggleCard();
      element3 = "3";
      element4 = "4";
    }
    });
  }
 void flipElement4(){
    Timer(Duration(seconds: second), (){
      if((element4 == "element4" && element3 != "element3") && checkElement4 == true){
      element4Card.currentState!.toggleCard();
      element3 = "3";
      element4 = "4";
     }
    });
  }

 void flipElement5(){
    Timer(Duration(seconds: second), (){
      if((element5 == "element5" && element6 != "element6") && checkElement5 == true){
      element5Card.currentState!.toggleCard();
      element5 = "5";
      element6 = "6";
    }
    });
  }
 void flipElement6(){
    Timer(Duration(seconds: second), (){
      if((element6 == "element6" && element5 != "element5") && checkElement6 == true){
      element6Card.currentState!.toggleCard();
      element5 = "5";
      element6 = "6";
     }
    });
  }
 
 void flipElement7(){
    Timer(Duration(seconds: second), (){
      if((element7 == "element7" && element8 != "element8") && checkElement7 == true){
      element7Card.currentState!.toggleCard();
      element7 = "7";
      element8 = "8";
    }
    });
  }
 void flipElement8(){
    Timer(Duration(seconds: second), (){
      if((element8 == "element8" && element7 != "element7") && checkElement8 == true){
      element8Card.currentState!.toggleCard();
      element7 = "7";
      element8 = "8";
     }
    });
  }

 void flipElement9(){
    Timer(Duration(seconds: second), (){
      if((element9 == "element9" && element10 != "element10") && checkElement9 == true){
      element9Card.currentState!.toggleCard();
      element9 = "9";
      element10 = "10";
    }
    });
  }
 void flipElement10(){
    Timer(Duration(seconds: second), (){
      if((element10 == "element10" && element9 != "element9") && checkElement10 == true){
      element10Card.currentState!.toggleCard();
      element9 = "9";
      element10 = "10";
     }
    });
  } 

 void flipElement11(){
    Timer(Duration(seconds: second), (){
      if((element11 == "element11" && element12 != "element12") && checkElement11 == true){
      element11Card.currentState!.toggleCard();
      element11 = "11";
      element12 = "12";
    }
    });
  }
 void flipElement12(){
    Timer(Duration(seconds: second), (){
      if((element12 == "element12" && element11 != "element11") && checkElement12 == true){
      element12Card.currentState!.toggleCard();
      element11 = "11";
      element12 = "12";
     }
    });
  } 
}