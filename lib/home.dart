import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final dataBloc = BlocProvider.of<TestBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: IconButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Logout'),
            content: Text('Log out from MoviePeek'),
            actions: <Widget>[
              button(context, 0xFF14244E, 0XFFFFFFFF, 'Cancel'),
              SizedBox(
                width: 48,
              ),
              button(context, 0XFFDFE7F0, 0xFF14244E, 'Logout'),
              SizedBox(
                width: 28,
              ),
            ],
          ),
        ),
        icon: Icon(Icons.logout_sharp),
      ),
    );
  }
}

button(BuildContext context, int bgcolor, int txtcolor, String txt) {
  return TextButton(
    style:
        ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(bgcolor))),
    onPressed: () {
      Navigator.pop(context, txt);
    },
    child: Text(
      txt,
      style: TextStyle(
        color: Color(txtcolor),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
