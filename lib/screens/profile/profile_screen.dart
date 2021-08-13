import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe/components/my_bottom_nav_bar.dart';
import 'package:food_recipe/constants.dart';
import 'package:food_recipe/screens/profile/components/body.dart';
import 'package:food_recipe/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      title: const Text("Profile"),
      leading: const SizedBox(),
      actions: [
        TextButton(
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize! * 1.6,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
