import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio();

void configureDio() {
  final baseOptions = BaseOptions(
    baseUrl: dotenv.get('FAKESTOREAPI'),
    connectTimeout: Duration(seconds: 20),
    receiveTimeout: Duration(seconds: 15),
  );

  dio.options = baseOptions;

}
