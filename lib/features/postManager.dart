import 'dart:async';

import 'package:flutter_challenge/core/service/service.dart';
import 'package:flutter_challenge/features/model.dart';

class PostManager{
  PostManager(PostManager manager);

  Stream<List<Post>> get postListView async*{
    await PostService.fetchData();
  }
}