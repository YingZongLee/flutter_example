import 'package:flutter/material.dart';
import 'package:flutter_exercise/core/shared/domain/menu.dart';
import 'package:flutter_exercise/core/shared/ui/widgets/home_card.dart';
import 'package:flutter_exercise/generated/assets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(Assets.imageLogo),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: FlutterLogo(size: 25),
          )
        ],
        title: const Text('Home Screen Demo'),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: Menu.values.length,
        itemBuilder: (_, index) {
          final menu = Menu.values[index];
          return HomeCard(
            menu: menu,
            index: ++index,
          );
        },
      ),
    );
  }
}
