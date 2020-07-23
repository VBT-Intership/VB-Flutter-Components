import 'package:flutter/material.dart';

class HttpCats extends StatefulWidget {
  @override
  _HttpCatsState createState() => _HttpCatsState();
}

class _HttpCatsState extends State<HttpCats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[buildContainerMediaQuery()],
      ),
    );
  }

  Container buildContainerMediaQuery() =>
      Container(height: MediaQuery.of(context).size.height * 0.5, color: Colors.blue, child: buildColumnOnePage());

  AspectRatio buildAspectRatio() =>
      AspectRatio(aspectRatio: 10 / 15, child: Container(color: Colors.red, child: buildColumnOnePage()));

  Column buildColumnOnePage() {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: TextField(),
            )),
        Expanded(flex: 12, child: Container(color: Colors.black))
      ],
    );
  }
}
