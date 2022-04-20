import 'package:flutter/material.dart';
import 'package:news/models/category.dart';
import 'package:news/models/screens.dart';
import 'package:news/repositories/category_repository.dart';
import 'package:news/widgets/category_item.dart';
import 'package:news/widgets/main_drawer.dart';

// ignore: use_key_in_widget_constructors
// testing 2
class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    List<Category> categories = CategoryRepository.getCategories();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
        title: const Text('Categories'),
      ),
      drawer: MainDrawer(Screens.Categories),
      body: GridView(
        padding: const EdgeInsets.all(18.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: categories.map((c) {
          return CategoryItem(
            c.id,
            c.title,
            c.imagePath,
          );
        }).toList(),
      ),
    );
  }
}
