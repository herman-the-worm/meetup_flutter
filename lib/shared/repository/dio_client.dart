import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../shared.dart';

class DioClient {
  static const String url = 'https://doctorcasa-node.herokuapp.com/api/';
  static BaseOptions opts = BaseOptions(
    baseUrl: url,
    responseType: ResponseType.json,
    connectTimeout: 100000,
    receiveTimeout: 100000,
  );

  static Dio createDio() {
    return Dio(opts);
  }

  static final dio = createDio();
  static final baseAPI = addInterceptors(dio);

  DioClient._privateConstructor();

  static final DioClient _instance = DioClient._privateConstructor();

  factory DioClient() {
    return _instance;
  }

  static Dio addInterceptors(Dio dio) {
    return dio
      ..interceptors.add(
        InterceptorsWrapper(
            // onRequest:
            //     (RequestOptions options, RequestInterceptorHandler handler) =>
            //         requestInterceptor(options, handler),
            onError:
                (DioError e, ErrorInterceptorHandler errorInterceptorHandler) =>
                    errorInterceptor(e, errorInterceptorHandler)),
      );
  }

  static dynamic requestInterceptor(RequestOptions options,
      RequestInterceptorHandler requestInterceptorHandler) async {
    // options.headers.addAll({"Authorization": "Bearer token"});

    return requestInterceptorHandler.next(options);
  }

  static dynamic errorInterceptor(
      DioError e, ErrorInterceptorHandler errorInterceptorHandler) async {
    return errorInterceptorHandler.next(e);
  }

  Future<Either<AuthFailure, Response>> testHttpRequest(
      {required String endpoint, required Map<String, dynamic> data}) async {
    try {
      final response = await baseAPI.get(url);

      print(response);
      if (response.statusCode == 200) {
        return Right(response);
      } else if (response.statusCode == 401) {
        return const Left(AuthFailure.unauthorized());
      } else if (response.statusCode == 404) {
        return const Left(AuthFailure.notfound());
      } else if (response.statusCode == 409) {
        return const Left(AuthFailure.duplicate());
      } else if (response.statusCode == 429) {
        return const Left(AuthFailure.tooManyRequests());
      }
      return const Left(AuthFailure.serverError());
    } catch (e) {
      return const Left(AuthFailure.serverError());
    }
  }
}
