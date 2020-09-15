import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     body: Center(
    //   child: Text('input框'),
    // ));

    return Container(
        // width: 300,
        // height: 50,
        width: double.infinity,
        child: FlatButton(
          color: Colors.red,
          // minWidth: double.infinity,
          child: Text('submit'),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () {},
        ));
  }
}
