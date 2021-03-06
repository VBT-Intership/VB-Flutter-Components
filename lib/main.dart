import 'package:flutter/material.dart';
import 'package:intershipwidgets/view/home_view.dart';
import 'package:intershipwidgets/view/sample_web_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SampleWebView(),
    );
  }
}
