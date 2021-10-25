import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 200,
          child: PhysicalModel(
            child: Opacity(
              opacity: 0.25,
              child: Container(
                height: 150,
                width: 200,
                color: Colors.pink,
              ),
            ),
            color: Color(0XFFFF9000),
            shadowColor: Colors.deepPurpleAccent,
            elevation: 10.0,
          ),
        ),
      ),
    );
  }
}
