import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  get pageHeight => MediaQuery.of(context).size.height;
  get pageWidth => MediaQuery.of(context).size.width;
  ThemeData get theme => Theme.of(context);
  final String goodByeImage =
      "https://images.unsplash.com/photo-1529268209110-62be1d87fe75?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80";

  final String androidImage =
      "https://images.unsplash.com/photo-1535378917042-10a22c95931a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2062&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: buildAspectRatioListView()),
          Expanded(flex: 2, child: buildTextTitle()),
          Expanded(flex: 4, child: Image.network(goodByeImage)),
          buildAndroidButton(() {}),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: FlutterLogo(),
      leading: Text("data"),
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      centerTitle: false,
    );
  }

  Widget buildAspectRatioListView() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      padding: EdgeInsets.all(pageHeight * 0.01),
      itemBuilder: (context, index) => buildContainerSample(),
    );
  }

  Text buildTextTitle() {
    return Text(
      "data",
      style: theme.textTheme.headline1.copyWith(fontWeight: FontWeight.w300),
      textScaleFactor: 0.5,
    );
  }

  Padding buildAndroidButton(VoidCallback onPressed) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Container(
          constraints: BoxConstraints(minHeight: 56),
          child: Center(child: Icon(Icons.favorite, color: theme.primaryColor)),
        ),
        onPressed: onPressed,
      ),
    );
  }

  Widget buildContainerSample() {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(pageHeight * 0.01),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[Expanded(child: Image.network(androidImage)), Expanded(child: buildCardWidget())],
          ),
        ),
      ),
    );
  }

  Card buildCardWidget() {
    return Card(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text("Veli"), FlutterLogo()],
    ));
  }
}
