import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../pages/meal_details_page.dart';

class MealListItem extends StatelessWidget {
  final Meal meal;
  MealListItem(this.meal);

  selectMeal(BuildContext context) {
    if (meal != null) {
      Navigator.of(context)
          .pushNamed(MealDetailsPage.pageRoute, arguments: meal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {selectMeal(context)},
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: EdgeInsets.all(10),
          // padding: EdgeInsets.all(10),
          child: Column(
            children: [
              if (meal.imageUrl != null) buildImage(),
              buildTitleBar(),
              // buildIngredients(),
              // buildInstructions()
            ],
          )),
    );
  }

  buildImage() {
    if (meal.imageUrl != null) {
      return SizedBox(
        width: double.infinity,
        height: 150,
        child: Image.network(meal.imageUrl!, fit: BoxFit.cover),
      );
    }
  }

  buildTitleBar() {
    return Text(meal.title!, style: TextStyle(fontSize: 22));
  }

  buildIngredients() {}

  buildInstructions() {}
}
