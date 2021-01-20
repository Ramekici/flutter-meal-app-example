import 'package:flutter/material.dart';
import 'package:meal_app_ekici_flutter/screens/favorite_screen.dart';

import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Meals'),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Kategoriler',
                ),
                Tab(icon: Icon(Icons.star), text: 'Favoriler')
              ]),
            ),
          body: TabBarView(children: <Widget>[
            CategoriesScreen(),
            FavoriteScreen()
          ]),
        ));
  }
}
