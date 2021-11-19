import 'package:dio/dio.dart';

final _baseOptions = BaseOptions(baseUrl: 'https://api.cnpja.com.br', headers: {
  'Authorization':
      'b77aa694-780f-4adb-8804-db45d9502d66-db32d0cd-5ff0-4e8b-9434-815503c2cdc2'
});

final api = Dio(_baseOptions);
