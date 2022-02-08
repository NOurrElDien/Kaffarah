import 'package:flutter/material.dart';
import 'package:kaffarah_na/HomeScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kaffarah App',
      theme: ThemeData(

      ),
      home: HomeScreen()
    );
  }
}



