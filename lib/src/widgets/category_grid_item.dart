import 'package:flutter/material.dart';

import '../models/category.dart';
import '../pages/category_meals_list_page.dart';
import '../utils/text_utils.dart';

class CategoryGridItem extends StatelessWidget {
  final Category cat;

  CategoryGridItem(this.cat);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: InkWell(
          onTap: () => showCategoryMenu(context, cat.id, cat.title),
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Text('A - ${cat.title}',
              style: Theme.of(context).textTheme.titleMedium)),
      // color: cat.color,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [cat.color.withOpacity(.7), cat.color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.75),
            // blurRadius: 20.0, // soften the shadow
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
    );
  }

  void showCategoryMenu(context, String id, String title) {
    Navigator.of(context).pushNamed(CategoryMealsListPage.pageRoute,
        arguments: {'id': id, 'title': title});
  }
}
