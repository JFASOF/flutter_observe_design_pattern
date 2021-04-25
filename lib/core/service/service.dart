import 'dart:async';
import 'dart:convert';
import 'package:flutter_challenge/features/model.dart';
import 'package:http/http.dart' as http;

class PostService {
  static String _uri='https://jsonplaceholder.typicode.com/posts';
  static Future fetchData()async{
    http.Response response=await http.get(Uri.parse(_uri));
    String entry=response.body;
    List allDatas=json.decode(entry);
    List<Post> _posts=allDatas.map((json) => Post.fromJson(json)).toList();
    return _posts;
  }
}