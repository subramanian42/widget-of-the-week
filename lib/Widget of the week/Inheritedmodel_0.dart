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
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: PngInherit.of(context)!.container,
            );
          },
        ),
      ),
    );
  }
}

class PngInherit extends InheritedWidget {
  final Widget container = Container(
    width: 100,
    height: 150,
    color: Colors.greenAccent,
  );
  PngInherit({container, child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
  static PngInherit? of(BuildContext context) {
    final cont = context.dependOnInheritedWidgetOfExactType<PngInherit>();
    assert(cont != null, 'No FrogColor found in context');
    return cont!;
  }
}
