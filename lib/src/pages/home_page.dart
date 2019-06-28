import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:xiaomi_store/src/widgets/button_buy.dart';
import 'package:xiaomi_store/src/widgets/custom_appbarhome.dart';
import 'package:xiaomi_store/src/widgets/custom_fondo.dart';
import 'package:xiaomi_store/src/widgets/decription_widget.dart';

import 'package:xiaomi_store/src/widgets/specification_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Fondo(),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBarHome(name:"Electric Scooter",icon1:Icons.dashboard,icon2:Icons.shopping_cart),
                Specification(),
                Description()
              ],
            ),
          ),
          Positioned(bottom: 0.0, child: ButtonBuy())
        ],
      ),
    );
  }
}
