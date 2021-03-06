import 'package:flutter/material.dart';

import '../config/app_routes.dart';

import '../models/category.dart';
// import '../screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  _selectCategory(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoriesMealsScreen(category);
    //     },
    //   ),
    // );

    Navigator.of(context).pushNamed(
      // '/categories-meals',
      AppRoutes.CATEGORIES_MEALS,
      arguments: category
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      // splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category.title,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(.5),
              category.color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      ),
    );
  }
}
