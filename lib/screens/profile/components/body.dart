import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe/screens/profile/components/info.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Info(
          name: "Zendy",
          email: "zendy199x@gmail.com",
          image: "assets/images/avatar.jpeg",
        ),
      ],
    );
  }
}
