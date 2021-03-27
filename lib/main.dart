import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Score App",
      debugShowCheckedModeBanner: false,
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int num = 0;
  void resetNumber() {
    setState(() {
      num = 0;
    });
  }
  void increaseNumber() {
    setState(() {
      num++;
    });
  }

  void decreaseNumber() {
    setState(() {
      num--;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "Score is",
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),

          ), Center(
            child: Text(
              num.toString(),
              style: TextStyle(
                  fontSize: 120,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),

          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: increaseNumber,
                color: Colors.blue,
                child: Text('Increase', style: TextStyle(color: Colors.white),),
              ),
              RaisedButton(
                onPressed: decreaseNumber,
                color: Colors.red,
                child: Text('Decrease', style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetNumber,
        child: Icon(Icons.reset_tv),
      ),
    );
  }
}
