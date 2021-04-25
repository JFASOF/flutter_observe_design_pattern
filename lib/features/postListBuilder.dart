import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_challenge/features/model.dart';
import 'package:flutter_challenge/features/observer.dart';

class PostListBuilder<T> extends StatelessWidget {
  final Function builder;
  final Stream stream;
  PostListBuilder({required this.builder, required this.stream});

  @override
  Widget build(BuildContext context) {
    return Observer<List<Post>>(
      stream:stream,
      builder: (BuildContext context, List<Post> data) =>
          builder(context, data),
      onWaiting: (context) => LinearProgressIndicator(),
    );
  }
}