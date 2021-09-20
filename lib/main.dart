import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double ar = MediaQuery.of(context).size.aspectRatio;

    print("${width} + ${height} + ${ar} ");

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: 166,
            width: 205,
            color: Colors.amber,
            child: AspectRatio(
              aspectRatio: 205/166,
            ),
          ),
          SizedBox(height: 20.0,),
          Text("Sample", style: TextStyle(fontSize: 14.0),),
        ],
      ),
    );
  }
}