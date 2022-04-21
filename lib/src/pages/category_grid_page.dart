import 'package:flutter/material.dart';

import '../dummy_data/dummy_data.dart';
import '../models/category.dart';
import '../widgets/category_grid_item.dart';

class CategoryGridPage extends StatelessWidget {
  static const pageRoute = '/category-grid';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Deli')),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((cat) => CategoryGridItem(cat)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, // max width of item
            childAspectRatio: 3 / 2, // height-to-width ratio
            crossAxisSpacing: 20, // horizontal spacing
            mainAxisSpacing: 20), // vertical spacing
      ),
    );
  }
}
