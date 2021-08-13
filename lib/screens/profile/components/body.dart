import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe/screens/profile/components/info.dart';
import 'package:food_recipe/screens/profile/components/profile_menu_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Info(
            name: "Zendy",
            email: "zendy199x@gmail.com",
            image: "assets/images/avatar.jpeg",
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "Saved Recipes",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/chef_color.svg",
            title: "Super Plan",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/language.svg",
            title: "Change Language",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/info.svg",
            title: "Help",
            press: () {},
          ),
        ],
      ),
    );
  }
}
