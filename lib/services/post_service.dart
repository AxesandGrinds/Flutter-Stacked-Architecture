import 'package:injectable/injectable.dart';
import 'package:myapp/app/locator.dart';
import 'package:myapp/models/Post.dart';

import 'api.dart';

@lazySingleton
class PostService {

  final _api = locator<Api>();

  List<Post> _posts;
  List<Post> get posts => _posts;

  bool get hasPosts => _posts != null && _posts.isNotEmpty;

  Future<List<Post>> getPostsForUser(int userId) async {
    _posts = await _api.getPostsForUser(userId);
    return _posts;
  }

}