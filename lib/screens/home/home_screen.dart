import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/components/my_bottom_nav_bar.dart';
import 'package:food_recipe/screens/home/components/body.dart';
import 'package:food_recipe/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      // I'm not able to BottomNavigatoonBar because the icon parameter don't expect SVG
      // I'm also use Provider to manage the state of our Nav
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      // On Android by default it's false
      centerTitle: true,
      title: Image.asset("assets/images/logo.png"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
        SizedBox(width: SizeConfig.defaultSize! * 0.5),
      ],
    );
  }
}
