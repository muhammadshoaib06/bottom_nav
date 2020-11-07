import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(55),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: RPSCustomPainter(),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            //color: currentIndex == 0 ? Colors.orange : Colors.grey.shade400,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.restaurant_menu,
                              //color: currentIndex == 1 ? Colors.orange : Colors.grey.shade400,
                              color: Colors.grey,
                            ),
                            onPressed: () {}),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.bookmark,
                              color: Colors.grey,
                              //color: currentIndex == 2 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.grey,
                              //color: currentIndex == 3 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0,size.height*1.00);
    path.lineTo(0,size.height*0.25);
    path.quadraticBezierTo(size.width*0.23,size.height*0.14,size.width*0.31,size.height*0.10);
    path.cubicTo(size.width*0.37,size.height*0.05,size.width*0.37,size.height*0.19,size.width*0.37,size.height*0.28);
    path.cubicTo(size.width*0.37,size.height*0.94,size.width*0.63,size.height*0.93,size.width*0.63,size.height*0.28);
    path.cubicTo(size.width*0.62,size.height*0.18,size.width*0.63,size.height*0.05,size.width*0.69,size.height*0.09);
    path.quadraticBezierTo(size.width*0.77,size.height*0.13,size.width*1.00,size.height*0.26);
    path.lineTo(size.width*1.00,size.height*1.00);


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
