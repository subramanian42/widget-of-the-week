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
          child: FadeInImage.assetNetwork(
            width: 250,
            height: 250,
            fadeInDuration: Duration(seconds: 2),
            placeholder: 'assets/random.jpg',
            image:
                'https://images.unsplash.com/photo-1632154939839-c37ee6d451be?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          ),
        ),
      ),
    );
  }
}
