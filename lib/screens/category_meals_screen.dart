import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../model/meal.dart';

class CategoryMealsScreen extends StatefulWidget {

  static String routeName = '/category-meals';
  final List<Meal> _availableMeals;
  CategoryMealsScreen(this._availableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {


  
  String catTitle;
  List<Meal> displayedMeals;
  var _loadedInitData = false;

  

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {

    if(!_loadedInitData){
      final routeArgs =  ModalRoute.of(context).settings.arguments as Map<String, String>;
      catTitle = routeArgs['title'];
      final catId = routeArgs['id'];

      displayedMeals = widget._availableMeals.where(
        (element) => element.categories.contains(catId)).toList();
      _loadedInitData = true;
      
    }
    super.didChangeDependencies();
  }

  // void _removeMeal(String mealId){
  //   setState(() {
  //     displayedMeals.removeWhere((element) => element.id == mealId);
  //   });
  // }


  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle)
      ),
      body: ListView.builder(
        itemCount: displayedMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
            id: displayedMeals[index].id,
            title: displayedMeals[index].title, 
            imageUrl: displayedMeals[index].imageUrl, 
            duration: displayedMeals[index].duration, 
            complexity: displayedMeals[index].complexity, 
            affordabilty: displayedMeals[index].affordabilty
            );

      })
    );
  }
}