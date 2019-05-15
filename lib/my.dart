import 'package:flutter/material.dart';
import 'model/post.dart';
import 'demo/ListViewDemo.dart';
import 'demo/hello_demo.dart';
import 'demo/DrawDemo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
//      home: MyImage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70
      ),
    );
  }

}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image(
      image: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=705545521,4148829032&fm=27&gp=0.jpg'),
      width: 100.0,
      height: 100.0,
    );
  }

}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigration',
              onPressed: ()=> debugPrint('Navigration button is pressed.')),
          title: Text("nihao"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: ()=> debugPrint('Search button is pressed.')),
          ],
          elevation: 4.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike))
              ]),
        ),
//      body: Hello(),
//      body: ListViewDemo(),
        body: TabBarView(
            children: <Widget>[
//              Icon(Icons.local_florist,size: 128.0,color: Colors.black12,),
              ListViewDemo(),
//              Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
              BasicDemo(),
              Icon(Icons.directions_bike,size: 128.0,color: Colors.black12,),
            ]),
        drawer: DrawDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }

}





