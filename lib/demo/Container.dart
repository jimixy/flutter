import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container_p7(),
    );
  }
}

class Container_p1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      height: 200,
      color: Colors.red,
    ));
  }
}

class Container_p2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        margin: EdgeInsets.all(20),
        width: 50,
        height: 50,
        color: Colors.red[900],
      ),
      Container(
        margin: EdgeInsets.all(20),
        width: 50,
        height: 50,
        color: Colors.red[900],
      ),
      Container(
        margin: EdgeInsets.all(20),
        // width: 50,
        // height: 50,
        color: Colors.red[900],
        child: Column(
          children: <Widget>[
            Text('文本一'),
            Text('文本二'),
          ],
        ),
      )
    ]);
  }
}

class Container_p3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Text(
          'data',
          style: TextStyle(fontSize: 30.0, color: Colors.blue),
        ),
        alignment: Alignment(-0.5, 0),
        // alignment: Alignment.center,
        // alignment: FractionalOffset(0, 1),
      ),
    );
  }
}

class Container_p4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Container(
          color: Colors.blue,
          child: Text('这是一个字符串'),
          // 设置宽高
          // constraints: BoxConstraints(
          //   maxHeight: 150,
          //   maxWidth: 100000
          // ),
          // 全屏展开
          constraints: BoxConstraints.expand(),
        ),
      ),
    );
  }
}

class Container_p5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.red,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.orange, offset: Offset(10, 10), blurRadius: 5)
            ],
            gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
            // borderRadius: BorderRadius.all(Radius.circular(20))
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: FlutterLogo(
          size: 250.0,
        ),
      ),
    );
  }
}

class Container_p6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Container(
    //     child: Container(
    //       color: Colors.red,
    //       child: FlutterLogo(
    //         size: 250.0,
    //       ),
    //       transform: Matrix4.rotationZ(0.9),
    //     ),
    //   ),
    // );
    return Center(
      child: Container(
          color: Colors.red,
          child: Transform.scale(
            scale: 1.5,
            child: FlutterLogo(
              size: 250.0,
            ),
          )),
    );
  }
}

class Container_p7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Column(
          children: <Widget>[
            new Image.asset('images/2.png'),
            new Image.network(
              'https://wx4.sinaimg.cn/large/b1601727ly1fm7ktqhcccj20go07378s.jpg',
              width: 200,
              height: 255,
            ),
            new FadeInImage.assetNetwork(
              placeholder: 'images/2.png',
              image:
                  'https://wx4.sinaimg.cn/large/b1601727ly1fm7ktqhcccj20go07378s.jpg',
              width: 200,
              // height: 120,
              // 高度根据宽度设置
              fit: BoxFit.fitWidth,
            )
          ],
        ),
      ),
    );
  }
}
