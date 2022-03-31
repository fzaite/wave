import 'package:flutter/material.dart';

class Submitb extends StatefulWidget {
  const Submitb({Key? key}) : super(key: key);

  @override
  State<Submitb> createState() => _SubmitbState();
}

class _SubmitbState extends State<Submitb> {
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
            onTap: () {},
            child: const Center(
              child: Text(
                'Submit',
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
