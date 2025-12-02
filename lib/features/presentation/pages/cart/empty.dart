import 'package:flutter/material.dart';

class CartEmptyPage extends StatelessWidget {
  const CartEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.shopping_cart_outlined
        )
      ],
    );
  }
}