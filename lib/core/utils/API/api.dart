import 'package:dio/dio.dart';

class API{
  final _baseURL ='https://www.googleapis.com/books/v1/';
  final Dio dio;

  API(this.dio);
  Future<dynamic> getData({required String endPoint})async{
    Response response = await dio.get('$_baseURL$endPoint');
    if(response.statusCode==200){
      return response.data;
    }
    else{
      throw Exception('there is a problem with status code ${response.statusCode}');
    }
  }
}