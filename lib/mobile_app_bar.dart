import 'package:app_pet_fteam/components/app_bar_component.dart';
import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: 60,
                snap: true,
                floating: true,
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: AppBarComponents(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
