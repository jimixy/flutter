import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _counter = 0;

  //初始化：一般用于初始state，只走一次
  @override
  void initState() {
    print('initSate');
    super.initState();
  }

  //当父组件更新的时候调用
  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  //状态变更结束调用的方法
  @override
  void didUpdateWidget(IndexPage oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  //当从视图树移除的时候调用的方法
  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  //组件已经销毁调用的方法
  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  //debugger模式下点击hot reload
  @override
  void reassemble() {
    print('reassemble');
    super.reassemble();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
