import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('首页'),
            // leading: Text('leading'),
            // actions: <Widget>[
            //   Text('actions1'),
            //   Text('actions2')
            // ],
            centerTitle: true,
          ),
          body: Center(
            child: Text('THIS IS BODY 2'),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            new BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), title: Text('闹钟')),
            new BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), title: Text('闹钟')),
            new BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), title: Text('闹钟')),
          ]),
          drawer: Drawer(
            // elevation: 0
            child: Center(
              child: Text('drawer'), //Navigator.pop(context);
              // child: WelcomePage(),
            ),
          ),
        ));
  }
}
