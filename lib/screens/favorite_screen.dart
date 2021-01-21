import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../model/meal.dart';

class FavoriteScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;

  FavoriteScreen(this.favoriteMeals);



  @override
  Widget build(BuildContext context) {

    print(favoriteMeals);
    if(favoriteMeals.isEmpty){
      return Center(
        child: Text('Favorilerimde henüz ürün yok, haydi eklemeye ne dersin'),
      );
    }else{
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title, 
            imageUrl: favoriteMeals[index].imageUrl, 
            duration: favoriteMeals[index].duration, 
            complexity: favoriteMeals[index].complexity, 
            affordabilty: favoriteMeals[index].affordabilty,
            );

      });
    }
  }
}