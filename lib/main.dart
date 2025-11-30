 import 'package:fakestore/core/libraries/router.dart';
import 'package:fakestore/core/dio/dio.dart';
import 'package:fakestore/core/local_storages/cache.dart';
import 'package:fakestore/core/local_storages/secure.cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    dotenv.load(),
    
    configureDio(),

    NormalCache.init(),
    SecureCache.init(),

  ]).timeout()


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fake Store',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerConfig: router,
    );
  }
}


