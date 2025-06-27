import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/cros3.png'),
            SizedBox(height: 20),
            Text(
              'У Вас ЕСТЬ Сила, Чтобы',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'В вашей комнате много красивых и привлекательных растений.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/visol'),
              child: Text('Начать'),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 12, 160, 228),
    );
  }
}
