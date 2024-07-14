import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio = Dio();

  Future<Response> post(
      {required body,
      required String url,
      required String token,
      Map<String,String>? headers,
      String? contentType}) async {
    Response response = await dio.post(
      url,
      data: body,
      options: Options(contentType: contentType, headers:headers ?? {
        "Authorization": "Bearer $token",
      }),
    );
    return response;
  }
}
