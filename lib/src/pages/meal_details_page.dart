import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailsPage extends StatelessWidget {
  static const pageRoute = "/meals-detail";

  const MealDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(body: Container(child: Center(child: Text(meal.title!))));
  }
}
