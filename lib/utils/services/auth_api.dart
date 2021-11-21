import 'package:dio/dio.dart';

final _baseOptions = BaseOptions(baseUrl: 'https://portalloja.herokuapp.com');

final authApi = Dio(_baseOptions);
