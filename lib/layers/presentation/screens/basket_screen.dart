import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Корзина', home: CartScreen());
  }
}

class CartItem {
  final String name;
  final int quantity;
  final double price;

  CartItem({required this.name, required this.quantity, required this.price});
}

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> cartItems = [
    CartItem(name: 'Товар 1', quantity: 2, price: 500.0),
    CartItem(name: 'Товар 2', quantity: 1, price: 1500.0),
    CartItem(name: 'Товар 3', quantity: 3, price: 300.0),
  ];

  double get totalPrice {
    return cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Корзина')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  leading: CircleAvatar(child: Text('${index + 1}')),
                  title: Text(item.name),
                  subtitle: Text(
                    'Количество: ${item.quantity} x ${item.price.toStringAsFixed(2)} ₽',
                  ),
                  trailing: Text(
                    '${(item.price * item.quantity).toStringAsFixed(2)} ₽',
                  ),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Итого:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${totalPrice.toStringAsFixed(2)} ₽',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Заказ оформлен!')));
              },
              child: Text('Оформить заказ'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
