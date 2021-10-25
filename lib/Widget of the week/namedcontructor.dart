import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';
import 'package:tags/models/mapmodel.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  //Color _mycolor = Colors.purple;
  double myopacity = 0.25;
  returnList(int n) {
    List<Widget> heytext = [];
    for (int i = 0; i < n; i++) heytext.add(Text('hey'));
    return heytext;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          FutureBuilder<Response>(
              future: http.get(
                  Uri.parse('https://jsonplaceholder.typicode.com/todos/1')),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.done) {
                  final model = Mapmodel.namedconstructor();
                  final checkmodel =
                      model.fromJSON(jsonDecode(snap.data!.body));
                  print(snap.data!.body);
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('TITLE: ${checkmodel.title}'),
                        Text('USERID: ${checkmodel.userId}'),
                        Text('ID:${checkmodel.id}'),
                        Text('STATUS ${checkmodel.completed}'),
                      ],
                    ),
                  );
                } else
                  return CircularProgressIndicator();
              })
        ],
      ),
    );
  }
}
