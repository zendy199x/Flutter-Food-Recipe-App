import 'package:flutter/material.dart';
import 'package:food_recipe/constants.dart';
import 'package:food_recipe/size_config.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  double defaultSize = SizeConfig.defaultSize!;

  List<String> categories = [
    "All",
    "Vietnamese",
    "American",
    "Japanese",
    "Chinese",
    "Korean",
    "Indian",
    "Mexican"
  ];

  // By default first one is selected
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultSize * 2),
      child: SizedBox(
        height: defaultSize * 3.5, // 35
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriItem(index),
        ),
      ),
    );
  }

  Widget buildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          left: defaultSize * 2,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultSize * 2, // 20
          vertical: defaultSize * 0.5, // 5
        ),
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? const Color(0xFFEDD3EE)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(defaultSize * 1.6),
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index
                ? kPrimaryColor
                : const Color(0xFFC2C2B5),
          ),
        ),
      ),
    );
  }
}
