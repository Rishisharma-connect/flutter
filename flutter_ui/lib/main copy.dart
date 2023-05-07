import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI works beautifully'),
        ),
        body: Container(
          margin: EdgeInsets.all(100),
          padding: EdgeInsets.all(50),
          width: 450,
          height: 450,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.orange]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topRight: Radius.elliptical(50, 50),
              topLeft: Radius.circular(20),
              bottomRight: Radius.elliptical(25, 25),
            ),
            // color: Colors.lightBlue,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.dstATop),
              image: AssetImage("images/bulb.png"),
              repeat: ImageRepeat.repeatY,
              // fit: BoxFit.cover,
            ),
          ),
          child: Text('Container'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit_outlined),
          onPressed: () {
            print('Oh, it is cold outside...');
          },
        ),
      ),
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 122, 76, 175),
        accentColor: Colors.amber,
        textTheme: TextTheme(
          bodyText2: TextStyle(
              fontSize: 26, fontStyle: FontStyle.italic, color: Colors.red),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}
