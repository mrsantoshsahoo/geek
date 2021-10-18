import 'package:demo/main_landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  var data = "Santosh Kumar Sahoo";
  var output = "";
  var dataa = " " + data;
  for (int i = 0; i < dataa.length; i++) {
    if (dataa[i] == " ") {
      output = output + dataa[i + 1];
    }
  }
  print(output);

  var n1 = 2;
  var n2 = 1024;
  var result = 1;
  var result1 = 0;
  for (int i = n2; i > 0; i--) {
    result = result * n1;
    if (result == n2) {
      result1 = result;
    }
  }
  if (result1 == n2) {
    print("yes");
  } else {
    print("no");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainLandingScreen(),
    );
  }
}

class TrianglePaintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Container(
            color: Colors.white,
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: TrianglePainter(),
            ),
          ),
        ),
      );
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final path = Path();
    final a = Offset(size.width * 1 / 6, size.height * 1 / 4);
    final b = Offset(size.width * 5 / 6, size.height * 3 / 4);
    final rect = Rect.fromPoints(a, b);
    path.moveTo(size.width * 1 / 2, size.height * 1 / 4);
    path.lineTo(size.width * 1 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6, size.height * 3 / 4);
    path.close();
    canvas.drawCircle(
      center,
      size.width * 1 / 3,
      paint,
    );

    //   canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
