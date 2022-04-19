import 'package:flutter/material.dart';
import 'src/home/HomeView.dart';

class AppWidget extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      title: 'Listita de ',
      home: HomeView()
      );
  }

}