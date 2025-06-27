import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/screens/petuh_screen.dart';
import 'package:matule/layers/presentation/shared/ui/email_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.block,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: BrandColors.background,
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () => context.go('/shope'),
                  icon: Icon(CupertinoIcons.back, size: 20),
                ),
              ),
              Text(
                context.tr('Профиль'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 40),
            ],
          ),
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/men.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Имя не указано',
            style: GoogleFonts.roboto(
              fontSize: 25,
              color: BrandColors.text,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            context.tr('Изменить фото профиля'),
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: BrandColors.accent,
              fontWeight: FontWeight.w500,
            ),
          ),

          Expanded(
            child: Column(
              children: [Image.asset('assets/strih.png', fit: BoxFit.cover)],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 7,
              crossAxisSpacing: 0.1,
              mainAxisSpacing: 0.1,
              padding: EdgeInsets.all(8),
              children: [
                Text(
                  context.tr('Имя'),
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: BrandColors.text,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: BrandColors.background,
                    disabledBorder: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  context.tr('Фамилия'),
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: BrandColors.text,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: BrandColors.background,
                    disabledBorder: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  context.tr('Адрес'),
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: BrandColors.text,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: BrandColors.background,
                    disabledBorder: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  context.tr('Телефон'),
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: BrandColors.text,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: BrandColors.background,
                    disabledBorder: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
