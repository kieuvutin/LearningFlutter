import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  String _name = ' ';
  final nameEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first app',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                    controller: nameEditingController,
                    onChanged: (name) {
                      this.setState((){
                        _name = name;
                      }
                      );
                    },
                    decoration: InputDecoration(
                    labelText: 'Enter your name!',
                    border: OutlineInputBorder()
                  )
                )
              ),
              Text('Your name: ',
                style: TextStyle(fontSize: 30, color: Colors.blue),),
              Text(_name,
                style: TextStyle(fontSize: 30, color: Colors.green),)
            ],
          ),
        ),
      ),
    );
  }
}