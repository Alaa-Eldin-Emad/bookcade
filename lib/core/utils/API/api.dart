import 'package:dio/dio.dart';

class API{
  final _baseURL ='https://www.googleapis.com/books/v1/';
  final Dio _dio;

  API(this._dio);
  Future<dynamic> getData({required String endPoint})async{
    var response = await _dio.get('$_baseURL$endPoint');
    
      return response.data;
    
  }
}