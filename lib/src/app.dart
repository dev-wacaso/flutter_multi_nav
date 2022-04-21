import 'package:flutter/material.dart';
import 'package:multi_nav/src/pages/category_meals_list_page.dart';

import 'pages/category_grid_page.dart';
import 'pages/meal_details_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.brown,
          // accentColor: Colors.amber,
          accentColor: Colors.green,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyMedium: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                bodyLarge: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                titleMedium: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed',
                ),
              )),
      home: CategoryGridPage(),
      routes: {
        CategoryMealsListPage.pageRoute: (context) => CategoryMealsListPage(),
        CategoryGridPage.pageRoute: (context) => CategoryGridPage(),
        MealDetailsPage.pageRoute: (context) => MealDetailsPage(),
      },
    );
  }
}
