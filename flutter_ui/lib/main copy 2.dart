import 'package:flutter/material.dart';

void main() => runApp(MyApp());

List<Widget> boxes(int n, double w, double h) {
  List<Widget> bxs = <Widget>[];
  List fill = [Colors.blue, Colors.green, Colors.purple, Colors.pink];
  for (int i = 0; i <= n - 1; i++) {
    Container bx = Container(
      color: fill[i],
      width: w,
      height: h,
      child: Text(i.toString()),
    );
    bxs.add(bx);
  }
  return bxs;
}

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
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.orange]),
            shape: BoxShape.rectangle,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: boxes(4, 40, 40),
          ),
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
