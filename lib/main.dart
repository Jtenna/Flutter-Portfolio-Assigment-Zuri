import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyan, Colors.deepPurple])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/mypics.jpg'),
                radius: 70,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Justina Eguare', style: TextStyle(
                color: Colors.white,
                 fontSize: 30,
                fontFamily: 'Pacifico',
              ),
              ),
              Text(
                'Mobile App Developer',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 20,
                width: 175,
                child: Divider(
                  color: Colors.white54,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.mail_sharp,
                    color: Colors.white70,
                    size: 30.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.white70,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.book_online,
                    color: Colors.white70,
                    size: 30.0,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),


        Container(
          margin:
          EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text('Hi.'
                  'I love to code for a living and...as a hobby. '
                  'My expertise is on Frontend Web Development and Mobile App Development. '
                  'Have a new project you want to bring to life? Get in Touch.',
              textAlign: TextAlign.center,
               style: TextStyle(
                 color: Colors.white70,
                 letterSpacing: 2,
                 fontSize: 18,
                 fontFamily: 'Source Sans Pro',
               ),
             ),
          ),
        ),
            ],
          ),
        ),
      ),
    );
  }
}
