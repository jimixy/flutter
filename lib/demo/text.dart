import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: () {
          print('onTap');
          // Navigator.pushNamed(context, './home');
          // Navigator.pop(context);
          // Navigator.popAndPushNamed(context, routeName)
        },
        child: Text(
          '点击跳转首页',
          // textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 20, color: Colors.red, fontStyle: FontStyle.italic),
        ),
      ),
    ));
  }
}
