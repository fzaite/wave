import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60.0,
        width: 180,
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.orange,
          elevation: 7.0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/verfication');
            },
            child: const Center(
              child: Text(
                'Reset Password',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
