import 'package:flutter/material.dart';
import 'package:research2/routes/route.dart';

class DrawingTest extends StatefulWidget {
  const DrawingTest({super.key});

  @override
  State<DrawingTest> createState() => _DrawingTestState();
}

class _DrawingTestState extends State<DrawingTest> {

List<Offset> _points = [];
final CirclePainter _painter  = CirclePainter();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          setState(() {
            RenderBox renderBox = context.findRenderObject() as RenderBox;
            Offset point = renderBox.globalToLocal(details.globalPosition);
            _points = List.from(_points)..add(point);
          });
        },
        onPanEnd: (DragEndDetails details){
          _points.add(Offset.infinite);
        },
        child: CustomPaint(
          painter: MyCustomPainter(
            points: _points
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Padding(
                    padding: const EdgeInsets.only(top:60),
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
                margin: const  EdgeInsets.only(top:120),
        child: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              _painter.addPoint(details.localPosition);
            });
          },
          onPanEnd: (_) {
            final accuracy = calculateAccuracy(_painter);
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Accuracy'),
                content: Text('${accuracy.toStringAsFixed(2)}%'),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        _painter.reset();
                      });
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          },
          child: CustomPaint(
            size: Size(300, 300),
            painter: _painter,
          ),
        ),
      ),
            ],
          ),
        ),
      ),
      ),
    );
  }
  double calculateAccuracy(CirclePainter painter) {
    // ignore: prefer_const_constructors
    final  center =  Offset(150, 150);
    // ignore: prefer_const_declarations
    final radius = 100;
    final numPoints = painter.points.length;

    double totalDistance = 0;
    for (final point in painter.points) {
      final distance = (point - center).distance - radius;
      totalDistance += distance.abs();
    }

    final averageDistance = totalDistance / numPoints;
    final accuracy = (1 - averageDistance / radius) * 100;

    return accuracy.clamp(0, 100);
  }
}


class MyCustomPainter extends CustomPainter {
  List<Offset> points = [];

  MyCustomPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.round;

    for (int i = 0; i < points.length - 1; i++) {
      canvas.drawLine(points[i], points[i + 1], paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CirclePainter extends CustomPainter {
  final Paint _paint;
  final List<Offset> points = [];

  CirclePainter() : _paint = Paint()
    ..color = Colors.yellow
    ..strokeWidth = 5.0
    ..style = PaintingStyle.stroke;

    final _paint2 = Paint()
    ..color = Colors.black
    ..strokeWidth = 3.0
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;
    canvas.drawCircle(center, radius, _paint);

    for (int i = 0; i < points.length - 1; i++) {
      canvas.drawLine(points[i], points[i + 1], _paint2);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  void addPoint(Offset point) {
    points.add(point);
  }

  void reset() {
    points.clear();
  }
}

  