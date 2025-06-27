import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/ui/password_field.dart';
import 'package:matule/layers/presentation/shared/ui/email_field.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 243, 243, 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (context.locale.languageCode == 'en') {
                        context.setLocale(Locale('ru'));
                      } else {
                        context.setLocale(Locale('en'));
                      }
                    },
                    icon: Icon(CupertinoIcons.book),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              context.tr('Привет!'),
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              context.tr(
                'Заполните Свои данные или продолжите через социальные медиа',
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(204, 83, 83, 83),
              ),
            ),
            SizedBox(height: 60),
            Text(
              context.tr('email'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: BrandColors.text,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: EmailField(),
            ),
            SizedBox(height: 20),
            Text(
              context.tr('Пароль'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: BrandColors.text,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: BrandColors.background,
                borderRadius: BorderRadius.circular(100),
              ),
              child: PasswordField(),
            ),
            GestureDetector(
              onTap: () => context.go('/da'),
              child: Text(
                context.tr('Востановить'),
                style: TextStyle(fontSize: 15, color: BrandColors.subTextDark),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(100),
              color: BrandColors.accent,
              onPressed: () => context.go('/shope'),
              child: Text(
                context.tr('sign_in'),
                style: TextStyle(color: BrandColors.TextLight),
              ),
            ),
            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        context.tr('Вы впервые?'),
                        style: TextStyle(color: BrandColors.text),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => context.push('/aaa'),
                        child: Text(
                          context.tr('Создать пользователя'),
                          style: TextStyle(color: BrandColors.subTextDark),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
