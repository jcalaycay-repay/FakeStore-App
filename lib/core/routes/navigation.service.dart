import 'package:flutter/material.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>(); 
  static final GlobalKey<NavigatorState> _rootKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState>  get navigatorKey => _navigatorKey;
  GlobalKey<NavigatorState>  get rootKey => _rootKey;
}