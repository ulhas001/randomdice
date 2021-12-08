import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          title: Center(child: Text('DICE')),
          backgroundColor: Colors.teal,
        ),
        body: Dicepage(),

      )
    )

  );
  
  
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int updatevalue = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    updatevalue = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$updatevalue.png'),
              ),
          )
        ],
      ),
    );
  }

}