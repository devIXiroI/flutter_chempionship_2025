import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 175,
          height: 145,
          padding: EdgeInsets.only(top: 12, left: 8, bottom: 12, right: 6),
          decoration: BoxDecoration(
            color: BrandColors.block,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 12),
        ),

        Positioned(
          left: 30,
          top: 10,
          right: 10,
          child: Container(
            height: 110,
            width: 100,
            child: Image.asset('assets/cros.png', fit: BoxFit.contain),
          ),
        ),
        Positioned(
          top: 107,
          left: 10,
          child: Text(
            'Best Seller',
            style: GoogleFonts.roboto(
              fontSize: 10,
              color: BrandColors.accent,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          top: 125,
          left: 10,
          child: Text(
            'Nike Air Max',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: BrandColors.subTextDark,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 10,
          child: Text(
            '₽752.00',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: BrandColors.text,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: BrandColors.background,
              borderRadius: BorderRadius.circular(100.0),
            ),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                CupertinoIcons.heart_fill,
                color: BrandColors.red,
                size: 20,
              ),
              onPressed: () => context.go('/uh'),
            ),
          ),
        ),
        Positioned(
          top: 145,
          left: 140,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: BrandColors.accent,
              borderRadius: BorderRadius.circular(12.0),
            ),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                CupertinoIcons.add,
                color: BrandColors.block,
                size: 10,
              ),
              onPressed: () => context.go('/da'),
            ),
          ),
        ),
      ],
    );
  }
}
