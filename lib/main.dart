import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int buttom = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('قیچی'),
              SizedBox(width: 20),
              Text('کاغذ'),
              SizedBox(width: 20),
              Text('سنگ'),
            ],
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      top = 3;
                      buttom = 1;
                    });
                  },
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                ),
                Image(
                  image: AssetImage('images/$buttom.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
