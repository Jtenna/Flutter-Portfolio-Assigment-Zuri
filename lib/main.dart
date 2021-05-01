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
              Text('Justina Eguare', style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.black,
                height: 2,
                thickness: 2,
                indent: 180,
                endIndent: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.mail_sharp,
                    color: Colors.pink,
                    size: 30.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.book_online,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'I love to code for a living and...as a hobby. '
                  'My expertise is on Frontend Web Development and Mobile App Development. '
                  'Have a new project you want to bring to life? Get in Touch.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.white),
                width: 300,
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
