import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Home Screen"),
      backgroundColor: Colors.orange.shade300,
      centerTitle: true,
    ),
    body: SafeArea(child: Column()),
  );
}
