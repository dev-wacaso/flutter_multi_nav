import 'package:flutter/material.dart';
import 'package:multi_nav/src/dummy_data/dummy_data.dart';

import '../widgets/meal_list_item.dart';

class CategoryMealsListPage extends StatelessWidget {
  static const pageRoute = '/category-meals-list';

  // const CategoryMealsPage(this.id, this.title);

  void doPop(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    String? id = args['id'];
    String? title = args['title'];
    final filteredMeals =
        DUMMY_MEALS.where((meal) => meal.categories!.contains(id)).toList();

    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: GestureDetector(
        onTap: () => doPop(context),
        child: Container(
          child: Center(
            child: ListView.builder(
              itemCount: filteredMeals.length,
              itemBuilder: (context, idx) => MealListItem(filteredMeals[idx]),
              // Text('${filteredMeals[idx].title}'),
            ),
          ),
        ),
      ),
    );
  }
}
