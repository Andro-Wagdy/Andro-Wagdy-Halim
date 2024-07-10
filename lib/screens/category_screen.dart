import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  final List namesList = const ['IQ quiz', 'sports quiz', 'science quiz'];
  final List colorsList = const [Colors.red, Colors.blue, Colors.purple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < namesList.length; i++)
            CategoryCard(
              categoryName: namesList[i],
              categoryColor: colorsList[i],
            ),
        ],
      ),
    );
  }
}
