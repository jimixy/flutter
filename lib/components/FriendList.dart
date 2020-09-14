// import 'dart:convert';
// import 'dart:io';

import 'package:flutter/material.dart';
import 'friend.dart';
import 'package:dio/dio.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => new _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List<Friend> _friends = [];

  // var httpClient = new HttpClient();
  var url = 'https://randomuser.me/api/?results=40';

  @override
  void initState() {
    super.initState();
    _getHttp().then((value) => {});
  }

  Future _getHttp() async {
    try {
      Response response;
      response = await Dio().get(url);
      return response.data;
    } catch (e) {
      return print(e);
    }
  }

  // _loadFriendsData() async {
  //   HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));

  //   HttpClientResponse response = await request.close();

  //   if (response.statusCode == 200) {
  //     var jsonString = await response.transform(utf8.decoder).join();

  //     setState(() {
  //       _friends = Friend.resloveDataFromResponse(jsonString);
  //     });
  //   }
  // }

  Widget _buildFriendsCell(BuildContext context, int index) {
    var friend = _friends[index];
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(friend.avatar),
      ),
      title: Text(friend.name),
      subtitle: Text(friend.email),
    );
  }

  Widget _buildContent() {
    var content;
    if (_friends.isEmpty) {
      content = new CircularProgressIndicator();
    } else {
      content = ListView.builder(
        itemCount: _friends.length,
        itemBuilder: _buildFriendsCell,
      );
    }
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('好友列表')),
      body: new Center(child: _buildContent()),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: new AppBar(title: new Text('好友列表')),
  //     body: new Center(
  //         child: ListView.builder(
  //       itemCount: _friends.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         var friend = _friends[index];
  //         return Text(friend.name);
  //       },
  //     )),
  //   );
  // }
}
