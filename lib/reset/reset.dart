import 'package:flutter/material.dart';
import '../forgot_password/forgot.dart';
import 'submitb.dart';

class Reset extends StatelessWidget {
  const Reset({Key? key}) : super(key: key);

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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 10.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: 35,
            onPressed: () {
              Navigator.of(context).pushNamed('/forgot');
            },
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 70),
                  child: const Image(
                      image: AssetImage('assets/images/wave_logo.png')),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 75.0, left: 15.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Text(
                            'Choose A New Password ',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),

                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Text(
                            'Create a new password that is at least 8 charecters long',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: 'Montserrat'),
                          ),
                        ),

                        const SizedBox(
                          height: 12,
                        ),

                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'New Password',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),

                        const SizedBox(
                          height: 12,
                        ),

                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'New Password Confirmation',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),

                        const SizedBox(height: 40.0),
                        const Submitb(),
                      ],
                    )),
              ]),
              const SizedBox(height: 15.0),
            ]));
  }
}
