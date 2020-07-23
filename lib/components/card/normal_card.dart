import 'package:flutter/material.dart';

class NormalCard extends StatelessWidget {
  final Widget child;

  const NormalCard({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 8,
            child: Row(
              children: <Widget>[
                Spacer(flex: 1),
                Expanded(flex: 16, child: child),
                Spacer(flex: 3),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
