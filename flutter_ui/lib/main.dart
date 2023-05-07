import 'package:flutter/material.dart';

void main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  static const String _title = 'Welcome to Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const NewStatefulWidget(),
      ),
    );
  }
}

class NewStatefulWidget extends StatefulWidget {
  const NewStatefulWidget({super.key});

  @override
  State<NewStatefulWidget> createState() => _NewStatefulWidgetState();
}

class _NewStatefulWidgetState extends State<NewStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 325.0,
          height: 325.0,
          color: Colors.blue,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
            duration: const Duration(seconds: 3),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 75.0),
          ),
        ),
      ),
    );
  }
}
