import 'package:flutter/material.dart';
import '../forgot_password/forgot.dart';
import 'input_username.dart';
import 'input_password.dart';
import 'submit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/forgot': (BuildContext context) => const Forgot(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('assets/images/background.png',
                  fit: BoxFit.cover, width: w, height: 300.0),
              const Center(
                  child: Image(
                image: AssetImage('assets/images/document.png'),
              )),
              Positioned(
                top: 200,
                left: 145,
                right: 145,
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                  ),
                ),
              ),
              const Positioned(
                top: 70,
                left: 45,
                right: 45,
                child: Image(image: AssetImage('assets/images/itg_logo.png')),
              ),
              Positioned(
                top: 265,
                left: 35,
                right: 35,
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(7.0),
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        'ITG Demo',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.only(left: 50, right: 40),
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Inputusername(),
                    const SizedBox(
                      height: 12,
                    ),
                    const Inputpassword(),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 150),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/forgot');
                        },
                        child: const Text(
                          'Forgot Password ?',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35.0),
                    const Center(
                      child: Submit(),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const Image(image: AssetImage('assets/images/finger.png')),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Place Your Finger To Login',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    const Text(
                      'WavDms@ 3.0 @2021 @INTEGRATED TEOCHNOLOGY GROUB',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
