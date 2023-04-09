import 'package:flutter/material.dart';
import 'package:research2/routes/route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.transparent,
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoute.grandfatherPassage);
                  },
                  child: customCard("Grandfather Passage","Read The Passage","assets/images/grandfather.png"),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoute.drawingTest);
                  },
                  child: customCard("Drawing Test","Draw The Shape","assets/images/Circle.jpg"),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoute.imageTest);
                  },
                  child: customCard("Image Test","Identify The Images and speak it","assets/images/Umbrela.jpg"),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoute.targetGame);
                  },
                  child: customCard("Target Game","Tap On The Target Shown on The App","assets/images/target.png"),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoute.colorTest);
                  },
                  child: customCard("Color Test","Say The Color Of Each Word","assets/images/color.jpeg"),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoute.memoryTest1);
                  },
                  child: customCard("Memory Test","Flip the card to find all matching pairs of images","assets/images/Card.png"),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoute.memoryTest2);
                  },
                  child: customCard("Memory Test","Flip the card to find all matching pairs of images","assets/images/Card.png"),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoute.dotConnect);
                  },
                  child: customCard("Dot Connect","Connect The Dot From 1 to 10","assets/images/dot.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   customCard(String str,String str2,String path){
    return  Padding(
      padding: const EdgeInsets.only(left:10,right:10,top:2),
      child: Card(
        color: Colors.white,
        child: ListTile(
          leading: Image(image: AssetImage(path)),
          title: Text(str),
          subtitle: Text(str2)
        ),
      ),
    );
  }
}