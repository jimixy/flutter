import 'package:flutter/material.dart';
// import 'input.dart';
// import 'Stateful.dart';
// import 'Container.dart';
// import 'ListView.dart';
// import 'text.dart';
// import 'Scaffold.dart';
// import 'todo.dart';
import 'router.dart';

// import '../components/FriendList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: IndexPage());
    // return Scaffold(
    //     body: new IndexPage(
    //   todos: new List.generate(
    //     20,
    //     (i) => new Todo(
    //       'Todo $i',
    //       'A description of what needs to be done for Todo $i',
    //     ),
    //   ),
    // ));
  }
}
