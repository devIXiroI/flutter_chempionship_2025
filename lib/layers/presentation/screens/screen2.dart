import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/cros2.png'),
            SizedBox(height: 20),
            Text(
              'Начнем путешествие',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Умная, великолепная и модная коллекция! Изучите сейчас.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/ggg'),
              child: Text('Начать'),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 12, 160, 228),
    );
  }
}
