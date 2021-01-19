import 'package:flutter/material.dart';
import 'package:meal_app_ekici_flutter/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {

  static String routeName = '/category-meals';
  
  // final String catId;
  // final String catTitle;

  // CategoryMealsScreen(this.catId, this.catTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =  ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catTitle = routeArgs['title'];
    final catId = routeArgs['id'];

    final categoryMeals  = DUMMY_MEALS.where(
      (element) => element.categories.contains(catId)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle)
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return Text(categoryMeals[index].title);

      })
    );
  }
}