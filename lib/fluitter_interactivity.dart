import 'package:flutter/material.dart';
import 'package:flutterproject/flutter_ui.dart';
import 'package:flutterproject/flutter_ui_with_interactivity.dart';
import 'package:flutterproject/new_page.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


class FlutterInteractivity extends StatefulWidget {
  const FlutterInteractivity({Key? key}) : super(key: key);
  @override
  _FlutterInteractivityState createState() => _FlutterInteractivityState();
}

class _FlutterInteractivityState extends State<FlutterInteractivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
      ),
      body: ListView(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => FlutterUIInteractive()));
              },
              child: Text('Flutter UI Interactive')),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ParentWidget()));
              },
              child: Text('Child Manage setstate')),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ParentWidget()));
              },
              child: Text('Parent Manage SetState')),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ParentWidget()));
              },
              child: Text('Mix Match')),
        ],
      ),
    );
  }
}
