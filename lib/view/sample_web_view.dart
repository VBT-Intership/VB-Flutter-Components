import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SampleWebView extends StatefulWidget {
  @override
  _SampleWebViewState createState() => _SampleWebViewState();
}

class _SampleWebViewState extends State<SampleWebView> {
  String home = "https://www.vbt.com.tr/";
  WebViewController controller;
  String initialUrl = "https://www.vbt.com.tr/sayfa/kilometre-taslari";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: buildWebView(),
      ),
    );
  }

  WebView buildWebView() {
    return WebView(
      onWebViewCreated: (controller) {
        this.controller = controller;
      },
      initialUrl: initialUrl,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: buildIconButtonBack(),
      actions: <Widget>[buildIconButtonHome()],
    );
  }

  IconButton buildIconButtonHome() {
    return IconButton(
      icon: Icon(Icons.home),
      onPressed: () {
        controller.loadUrl(home);
      },
    );
  }

  IconButton buildIconButtonBack() {
    return IconButton(
        icon: Icon(Icons.backspace, color: Colors.red),
        onPressed: () {
          controller.goBack();
          // controller.
        });
  }
}
