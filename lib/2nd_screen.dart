import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text('2nd Screen',style: TextStyle(color: Colors.black,fontSize: 24),)),
    );
  }
}
