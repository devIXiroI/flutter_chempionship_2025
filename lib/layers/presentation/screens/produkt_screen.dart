import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class ProduktScreen extends StatefulWidget {
  const ProduktScreen({super.key});

  @override
  State<ProduktScreen> createState() => _ProduktScreenState();
}

class _ProduktScreenState extends State<ProduktScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.background,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: BrandColors.block,
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () => context.go('/shope'),
                  icon: Icon(CupertinoIcons.back, size: 20),
                ),
              ),

              Positioned(
                left: 300,
                top: 100,
                right: 100,
                child: Container(
                  height: 210,
                  width: 200,
                  child: Image.asset('assets/pivo.png', fit: BoxFit.contain),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: BrandColors.block,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(),
                child: ListView(scrollDirection: Axis.horizontal, children: []),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
