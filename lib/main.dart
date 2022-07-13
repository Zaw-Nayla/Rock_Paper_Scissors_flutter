import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock Paper Scissor',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'The Competition!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List list = ['p', 'r', 's'];
  var p1 = 'r';
  var p2 = 'r';

  void check() {
    if (p1 == p2) {
      const snackBar = SnackBar(
        content: Text('Draw!'),
        duration: Duration(seconds: 1),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (p1 == 'r' && p2 == 'p') {
      const snackBar = SnackBar(
        content: Text(
          'Player B Wins!',
        ),
        duration: Duration(seconds: 1),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (p1 == 'r' && p2 == 's') {
      const snackBar = SnackBar(
        content: Text('Player A Wins!'),
        duration: Duration(seconds: 1),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (p1 == 'p' && p2 == 'r') {
      const snackBar = SnackBar(
        content: Text('Player A Wins!'),
        duration: Duration(seconds: 1),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (p1 == 'p' && p2 == 's') {
      const snackBar = SnackBar(
        content: Text('Player B Wins!'),
        duration: Duration(seconds: 1),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (p1 == 's' && p2 == 'r') {
      const snackBar = SnackBar(
        content: Text('Player B Wins!'),
        duration: Duration(seconds: 1),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (p1 == 's' && p2 == 'p') {
      const snackBar = SnackBar(
        content: Text('Player A Wins!'),
        duration: Duration(seconds: 1),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Player A',
                    style: TextStyle(
                      fontFamily: 'Edu',
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Player B',
                    style: TextStyle(
                      fontFamily: 'Edu',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/$p1.png",
                    width: 150,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    colorBlendMode: BlendMode.softLight,
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    'images/$p2.png',
                    width: 150,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    colorBlendMode: BlendMode.softLight,
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Choose Your hand!',
                    style: TextStyle(
                      fontFamily: 'PT',
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Choose Your hand!',
                    style: TextStyle(
                      fontFamily: 'PT',
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            p1 = 'r';
                          });
                        },
                        child: Image.asset(
                          'images/r.png',
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            p1 = 'p';
                          });
                        },
                        child: Image.asset(
                          'images/p.png',
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            p1 = 's';
                          });
                        },
                        child: Image.asset(
                          'images/s.png',
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 30,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            p2 = 'r';
                          });
                        },
                        child: Image.asset(
                          'images/r.png',
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            p2 = 'p';
                          });
                        },
                        child: Image.asset(
                          'images/p.png',
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            p2 = 's';
                          });
                        },
                        child: Image.asset(
                          'images/s.png',
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        check();
                      },
                      child: Text('Check who is the Winner!'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
