import 'package:facebook_ui_clone/data/data.dart';
import 'package:facebook_ui_clone/widgets/circle_button.dart';
import 'package:facebook_ui_clone/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/colors/palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(icon: Icons.search,
              iconSize: 30,
              onPressed: () => print('search'),
              ),
              CircleButton(icon: MdiIcons.facebookMessenger,
              iconSize: 30,
              onPressed: () => print('messenger'),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser : currentUser)
            ),
        ],
      ),
      
    );
  }
}