import 'package:flutter/material.dart';

class Inputusername extends StatefulWidget {
  const Inputusername({Key? key}) : super(key: key);

  @override
  State<Inputusername> createState() => _InputusernameState();
}

class _InputusernameState extends State<Inputusername> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
        labelText: 'Username',
        labelStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.grey),
      ),
    );
  }
}
