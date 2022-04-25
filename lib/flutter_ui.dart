import 'package:flutter/material.dart';
import 'package:flutterproject/button_section.dart';
import 'package:flutterproject/text_section.dart';
import 'package:flutterproject/title_section.dart';
import 'package:flutterproject/new_page.dart';
class FlutterUI extends StatelessWidget {
  const FlutterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          TitleSection(),
          ButtonSection(),
          TextSection(),
        ],
      ),
    );
  }
}
