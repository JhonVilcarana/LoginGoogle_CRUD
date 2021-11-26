import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_application/post.dart';

class Cardposts extends StatelessWidget {
  Post post;
  Cardposts(this.post);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            padding(Text(post.title, style: const TextStyle(fontSize: 18.0))),
            padding(
              Flexible(
                  child: Text(post.description,
                      style: const TextStyle(
                          fontSize: 18.0, overflow: TextOverflow.clip))),
            )
          ],
        ),
      ),
    );
  }

  Widget padding(Widget widget) {
    return Padding(padding: EdgeInsets.all(0), child: widget);
  }
}
