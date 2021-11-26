import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:frontend_application/cardpost.dart';
import 'package:frontend_application/post.dart';
import 'package:http/http.dart' as http;

class ListPost extends StatefulWidget {
  @override
  _ListPostState createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  Map data = {};
  List postsData = [];
  getPosts() async {
    http.Response response = await http.get(
        Uri.parse('https://app-backend-vilcarana.herokuapp.com/posts/listar'));
    var resList = json.decode(response.body) as List;
    setState(() {
      resList.forEach((element) {
        postsData.add(element);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 100),
              itemCount: postsData == null ? 0 : postsData.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: ObjectKey("alaos"),
                  //child: Cardposts(post[index]),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text("${postsData[index]["title"]}",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Spacer(),
                        ]),
                        Row(
                          children: <Widget>[
                            Text(
                              "${postsData[index]["description"]}",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      postsData.removeAt(index);
                    });
                  },
                );
              }),
        ],
      ),
    ));
  }
}
