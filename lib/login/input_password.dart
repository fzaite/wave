import 'package:flutter/material.dart';

class Inputpassword extends StatefulWidget {
  const Inputpassword({Key? key}) : super(key: key);

  @override
  State<Inputpassword> createState() => _InputpasswordState();
}

class _InputpasswordState extends State<Inputpassword> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock_open),
        labelText: 'Password',
        labelStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.grey),
      ),
    );
  }
}
