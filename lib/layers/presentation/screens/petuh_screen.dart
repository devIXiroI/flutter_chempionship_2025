import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/ui/Outdoor_button.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';
import 'package:matule/layers/presentation/shared/ui/home_button.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';
import 'package:matule/layers/presentation/shared/ui/tennis_button.dart';

class PetuhScreen extends StatefulWidget {
  const PetuhScreen({super.key});

  @override
  State<PetuhScreen> createState() => _PetuhScreenState();
}

class _PetuhScreenState extends State<PetuhScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: IconButton(
                    onPressed: () {
                      ZoomDrawer.of(context)?.toggle();
                    },

                    icon: Icon(CupertinoIcons.line_horizontal_3_decrease),
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () => context.go('/basket'),
                    icon: Icon(CupertinoIcons.bag),
                  ),
                ),
              ],
            ),

            Text(
              ('Главная'),
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(204, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 300,

                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Поиск',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [HomeButton(), OutdoorButton(), TennisButton()],
              ),
            ),
            GestureDetector(
              onTap: () => context.go('/cros'),
              child: Text(
                context.tr('Все'),
                style: TextStyle(fontSize: 15, color: BrandColors.accent),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 20),
            Text('Популярное'),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [CardScreen(), CardScreen()],
              ),
            ),

            Expanded(
              child: Column(
                children: [Image.asset('assets/corsk.png', fit: BoxFit.cover)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
