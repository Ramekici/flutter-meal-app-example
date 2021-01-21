import 'package:flutter/material.dart';
import '../model/meal.dart';
import '../screens/favorite_screen.dart';
import '../widgets/main_drawer.dart';

import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  
  final List<Meal> favoriteMeals;

  const TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  List<Map<String, Object>> _pages;

  @override
  void initState() { 
    _pages =[
    {
      'page': CategoriesScreen(),
      'title' :'Kategoriler' 
    },
    {
      'page': FavoriteScreen(widget.favoriteMeals),
      'title':'Favorilerim' 
    } 
    ];
    super.initState();
    
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
              title: Text(_pages[_selectedPageIndex]['title']),
          ),
          drawer: MainDrawer(),
          body: _pages[_selectedPageIndex]['page'],
          bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor:  Theme.of(context).primaryColor,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: _selectedPageIndex,
            //type: BottomNavigationBarType.shifting,
            items:[
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  title: Text('Kategoriler'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star), 
                  title: Text('Favorilerim')
                )
              ]
            ),
        );
  }
}
