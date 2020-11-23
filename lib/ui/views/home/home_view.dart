import 'package:myapp/ui/views/home/home_viewmode.dart';
import 'package:myapp/ui/views/posts/post-view.dart';
import 'package:myapp/ui/views/todos/todo_view.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class HomeView extends StatelessWidget {

  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(

          body: PageTransitionSwitcher(
            duration: const Duration(milliseconds: 300),
            reverse: model.reverse,
            transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                ) {
              return SharedAxisTransition(
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
              );
            },
            child: getViewFromIndex(model.currentIndex),
          ),

          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[800],
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(
                title: Text('Posts'),
                icon: Icon(Icons.art_track),
              ),
              BottomNavigationBarItem(
                title: Text('Todos'),
                icon: Icon(Icons.list),
              ),
            ],
          ),
        ),
        viewModelBuilder: () => HomeViewModel());
  }

  Widget getViewFromIndex(int index) {
    switch(index){
      case 0:
        return PostView();
      case 1:
        return TodoView();
      default:
        return PostView();
    }
  }

}
