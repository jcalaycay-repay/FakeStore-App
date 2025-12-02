import 'package:fakestore/core/libraries/router.library.dart';
import 'package:fakestore/core/dio/dio.dart';
import 'package:fakestore/core/local_storages/cache.dart';
import 'package:fakestore/core/local_storages/secure.cache.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();
  await NormalCache.init();
  await SecureCache.init();

  
  configureDio();
  ThemeSingleton.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fake Store',
      theme: ThemeSingleton.defaultTheme,
      darkTheme: ThemeSingleton.darkTheme,
      routerConfig: router,
    );
  }
}


