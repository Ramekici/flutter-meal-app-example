import 'dart:ui';

import 'package:flutter/material.dart';
import './dummy_data.dart';
import './screens/filter_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './model/meal.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.



  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Map<String, bool> _filters ={
    'gluten': false,
    'vegetarian': false,
    'vegan': false,
    'lactose': false,
  };


  List<Meal> _availableMeals =  DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];

  void _setFilters(Map<String, bool> filterdata){
    setState(() {
      _filters = filterdata;
      _availableMeals = DUMMY_MEALS.where((element){
        if(_filters['gluten'] && !element.isGlutenFree){
          return false;
        }
        if(_filters['vegetarian'] && !element.isVegeterian){
          return false;
        }
        if(_filters['vegan'] && !element.isVegan){
          return false;
        }
        if(_filters['lactose'] && !element.isLactoseFree){
          return false;
        }
        return true;

      }).toList();
    });
  }

  void _toggleFavorite(String mealId){
    final existingIndex =  _favoriteMeals.indexWhere((element) => element.id == mealId);
    if(existingIndex >= 0){
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    }else{
      setState(() {
        _favoriteMeals.add(DUMMY_MEALS.firstWhere((element) => element.id == mealId));
      });
    }
  }

  bool _isFavorite(String id) {
    return _favoriteMeals.any((element) => element.id == id);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yemek Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
          )

        )),
      //home: CategoriesScreen(),
      routes: {
        '/': (ctx) => TabsScreen(_favoriteMeals),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(_availableMeals), 
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(_toggleFavorite, _isFavorite),
        FilterScreen.routeName: (ctx) => FilterScreen(_setFilters, _filters)
      },
      // onGenerateRoute: (settings){
      //   // print(settings.arguments);
      //   // return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      // },
      onUnknownRoute:(settings){
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}


