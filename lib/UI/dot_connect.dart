import 'package:flutter/material.dart';
import 'package:research2/routes/route.dart';

class DotConnect extends StatefulWidget {
  const DotConnect({super.key});

  @override
  State<DotConnect> createState() => _DotConnectState();
}

class _DotConnectState extends State<DotConnect> {

 List<Offset> points = [];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color : Colors.white,
          child: GestureDetector(
            onPanUpdate: (DragUpdateDetails details){
              setState(() {
                RenderBox renderBox = context.findRenderObject() as RenderBox;
                Offset position = renderBox.globalToLocal(details.globalPosition);
                points = List.from(points)..add(position);
              });
            },
            onPanEnd: (DragEndDetails details){
              points.add(Offset.infinite);
            },
            child: CustomPaint(   
              painter: DrawPoints(points: points),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:40),
                    child: Row(
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
                  ),
                  Container(
                    height: 692,
                    width: 400,
                    //color: Colors.red,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 30,
                          right: 50,
                          bottom: 500,
                          child: customImage("assets/images/1.png"),
                        ),
                        Positioned(
                          top: 100,
                          left: -100,
                          right: 200,
                          bottom: 400,
                          child: customImage("assets/images/2.png"),
                        ),
                        Positioned(
                          top: 100,
                          left: 0,
                          right: 100,
                          bottom: 400,
                          child: customImage("assets/images/3.png"),
                        ),
                        Positioned(
                          top: 200,
                          left: -120,
                          right: 100,
                          bottom: 300,
                          child: customImage("assets/images/4.png"),
                        ),
                        Positioned(
                          top: 180,
                          left: 90,
                          right: 100,
                          bottom: 330,
                          child: customImage("assets/images/5.png"),
                        ),
                        Positioned(
                          top: 40,
                          left: 120,
                          right: 50,
                          bottom: 460,
                          child: customImage("assets/images/6.png"),
                        ),
                        Positioned(
                          top: 80,
                          left: 220,
                          right: 0,
                          bottom: 420,
                          child: customImage("assets/images/7.png"),
                        ),
                        Positioned(
                          top: 300,
                          left: 120,
                          right: 100,
                          bottom: 220,
                          child: customImage("assets/images/8.png"),
                        ),
                        Positioned(
                          top: 220,
                          left: 220,
                          right: 0,
                          bottom: 280,
                          child: customImage("assets/images/9.png"),
                        ),
                        Positioned(
                          top: 400,
                          left: 220,
                          right: 0,
                          bottom: 100,
                          child: customImage("assets/images/10.png"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }

 Widget customImage(String url){
  return Image(
    image: AssetImage(url),
  );
 }

}

class DrawPoints extends CustomPainter{

 List<Offset> points = [];

 DrawPoints({required this.points});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
     ..color = Colors.black
     ..strokeWidth = 3;
    for(int i=0;i<points.length-1;i++){
      canvas.drawLine(points[i], points[i+1], paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}