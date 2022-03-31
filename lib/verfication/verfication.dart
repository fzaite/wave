import 'package:flutter/material.dart';
import 'package:wave_dms/forgot_password/forgot.dart';
import '../reset/reset.dart';

class Ver extends StatelessWidget {
  const Ver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/forgot': (BuildContext context) => const Forgot(),
        '/reset': (BuildContext context) => const Reset(),
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
                        top: 35.0, left: 15.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Text(
                            'We Sent a Code To Your Email',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),

                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Text(
                            'Enter the 8-digt verfication code sent to h****@itgsolutions.com',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: 'Montserrat'),
                          ),
                        ),

                        const SizedBox(
                          height: 18,
                        ),

                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '27834635',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        const Text(
                          'Resent Code',
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),

                        const SizedBox(height: 40.0),
                        Center(
                          child: SizedBox(
                            height: 60.0,
                            width: 180,
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.orange,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/reset');
                                },
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
                        )
                      ],
                    )),
              ]),
              const SizedBox(height: 15.0),
            ]));
  }
}
