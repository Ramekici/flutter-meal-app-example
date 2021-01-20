import 'package:flutter/material.dart';
import 'package:meal_app_ekici_flutter/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static String routeName = '/meal-detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white12,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 200,
        width: 300,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                )),
            buildSectionTitle(context, 'İçerikler'),
            buildContainer(ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (ctx, ind) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(selectedMeal.ingredients[ind]),
                    )))),
            buildSectionTitle(context, 'Aşamalar'),
            buildContainer(ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (ctx, ind) => Card(
                      color: Theme.of(context).accentColor,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                              leading: CircleAvatar(
                                child: Text('#${(ind + 1)}'),
                              ),
                              title: Text(selectedMeal.steps[ind])
                              ),
                              Divider(),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
