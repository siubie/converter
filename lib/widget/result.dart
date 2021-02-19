import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Suhu dalam Kelvin"),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              "150",
              style: TextStyle(fontSize: 36),
            ),
          ),
        ],
      ),
    );
  }
}
