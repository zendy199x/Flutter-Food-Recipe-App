import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe/models/recipe_bundel.dart';
import 'package:food_recipe/screens/home/components/categories.dart';
import 'package:food_recipe/screens/home/components/recipe_bundel_card.dart';
import 'package:food_recipe/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;

    return SafeArea(
      child: Column(
        children: <Widget>[
          const Categories(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultSize * 2,
              ),
              child: GridView.builder(
                itemCount: recipeBundles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? defaultSize * 2
                          : 0,
                  childAspectRatio: 1.65,
                ),
                itemBuilder: (context, index) => RecipeBundelCard(
                  recipeBundle: recipeBundles[index],
                  press: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
