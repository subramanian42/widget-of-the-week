import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CardScreen();
              }));
            },
            child: Card(
              color: Colors.purple,
              child: Hero(
                  tag: 'Flutter logo',
                  child: FlutterLogo(
                    size: 150,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.purple,
            child: Hero(tag: 'Flutter logo', child: FlutterLogo()),
          ),
        ),
      ),
    );
  }
}
