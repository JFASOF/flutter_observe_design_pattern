import 'package:flutter/material.dart';
import 'package:flutter_challenge/features/postListBuilder.dart';
import 'package:flutter_challenge/features/postManager.dart';

class PageViewPosts extends StatefulWidget {
  PageViewPosts({
    Key? key,
  }) : super(key: key);
  @override
  _PageViewPostsState createState() => _PageViewPostsState();
}

class _PageViewPostsState extends State<PageViewPosts> {
  late PostManager manager;
  @override
  void initState() {
    super.initState();
    manager = PostManager(manager);
  }

  @override
  Widget build(BuildContext context) {
    return PostListBuilder(
        stream: manager.postListView,
        builder: (context, posts) {
          return ListView.builder(itemBuilder: (context, index) {
            return ListTile(
                title: Text(posts[index].title),
                subtitle: Text(posts[index].id),
                leading: CircleAvatar());
          });
        });
  }
}
