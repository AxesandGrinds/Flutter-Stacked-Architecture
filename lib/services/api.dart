import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/models/Post.dart';

@lazySingleton
class Api {

  static const endPoint = 'https://jsonplaceholder.typicode.com';

  var client = new http.Client();

  Future<List<Post>> getPostsForUser(int userId) async {
    var posts = List<Post>();
    var response = await client.get('$endPoint/posts?userId=$userId');
    print('response:$response');
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var post in parsed) {
      posts.add(Post.fromJson(post));
    }

    return posts;
  }
}
