import 'package:clean_demo/service/basic_service_modifiers.dart';
import 'package:dio/dio.dart';

class PostServcie extends BaseServcie {
  PostServcie({required super.dio});
  Future<Response> getPosts() async {
    response = await dio.get(baseUrl);
    return response;
  }
}