import 'package:flutter/material.dart';

enum RoutePage {
  home,
  // cart,
  account;

  Icon getIcon() {
    return Icon(
      switch(this) {
        RoutePage.home => Icons.home,
        // RoutePage.cart => Icons.shopping_bag,
        RoutePage.account => Icons.account_circle,
      }
    );
  }
}

