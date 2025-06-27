import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/cros1.png'),
            SizedBox(height: 20),
            Text(
              'ДОБРО ПОЖАЛОВАТЬ',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/gg'),
              child: Text('Начать'),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 12, 160, 228),
    );
  }
}
