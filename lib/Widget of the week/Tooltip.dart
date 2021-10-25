import 'package:flutter/material.dart';

import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Tooltip(
            message: 'Flutter Logo',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.deepOrange,
                child: FlutterLogo(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> buildRow(int count) {
  List<Widget> cont = [];
  for (int i = 0; i < count; i++) {
    cont.add(
      Container(
        height: 50,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0),
      ),
    );
  }
  return cont;
}
