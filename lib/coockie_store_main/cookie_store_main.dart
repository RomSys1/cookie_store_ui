import 'package:coockie_store_ui/coockie_store_main/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';

class CockieStoreMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
