import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  List users = [
    'Yusef',
    'Tony',
    'Trystan',
    'Maria',
    'Sooni',
    'Danial',
    'Ibra',
    'Umar'
  ];

  String _printList(List stuff, int number) {
    String result = 'The users are: \n';
    if (number <= stuff.length) {
      for (int i = 0; i <= number - 1; i++) {
        result += stuff[i] + '\n';
      }
      return result;
    } else {
      return 'Give me a better number pls :)';
    }
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Successful Login'),
    );

    Text welcomeText =
        Text('Welcome Back YUSEF\n It is nice to see you again :)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ));

    Image smile = Image.asset(
      'images/smile.png',
      width: 150,
      height: 150,
    );

    RaisedButton view = RaisedButton(
      child: Text(
        'View All Users',
      ),
      onPressed: () {
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(_printList(users, 8)),
              );
            });
      },
    );

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            welcomeText,
            view,
            smile,
          ],
        ),
      ),
    );
  }
}
