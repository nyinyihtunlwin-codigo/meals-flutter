import 'package:flutter/material.dart';
import 'package:meals_flutter/category_item.dart';
import 'package:meals_flutter/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Meals"),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES
              .map((categoryData) => CategoryItem(
                    categoryData.id!,
                    categoryData.title!,
                    categoryData.color,
                  ))
              .toList(),
        ));
  }
}
