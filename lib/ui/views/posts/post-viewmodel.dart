import 'package:injectable/injectable.dart';
import 'package:myapp/app/locator.dart';
import 'package:myapp/services/post_service.dart';
import 'package:stacked/stacked.dart';
import 'package:myapp/models/Post.dart';

@lazySingleton
class PostViewModel extends FutureViewModel<List<Post>> {

  final _postService = locator<PostService>();

  @override
  Future<List<Post>> futureToRun() {
    print('Fetch posts');
    return _postService.getPostsForUser(3);
  }
}