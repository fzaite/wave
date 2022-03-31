import 'package:flutter/material.dart';

class Submit extends StatefulWidget {
  const Submit({Key? key}) : super(key: key);

  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 200,
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.orange,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {},
          child: const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    );
  }
}
