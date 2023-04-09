
import 'package:flutter/material.dart';
import 'package:research2/Resources/passage.dart';
import 'package:research2/routes/route.dart';

class GrandfatherPassage extends StatefulWidget {
  const GrandfatherPassage({super.key});

  @override
  State<GrandfatherPassage> createState() => _GrandfatherPassageState();
}

class _GrandfatherPassageState extends State<GrandfatherPassage> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.transparent,
            child:  Column(
              children: [
                Container(
                  height: 50,
                  width: double.maxFinite,
                  color: Colors.transparent,
                  child: ListTile(
                    leading: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, MyRoute.homePage);
                      },
                      child: const Text("Back",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(166, 207, 207, 11),
                        ),
                      )
                    ),
                    trailing: GestureDetector(
                      onTap: (){
                        
                      },
                      child: const Text("Submit",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(166, 207, 207, 11),
                        ),
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(MyPassage().text,
                   style: const TextStyle(
                   fontSize: 20,
                   wordSpacing: 2,
                 ),
                ),
              ),
             ],
            )
          ),
        ),
      ),
    );
  }
}