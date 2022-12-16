import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meetup_flutter/shared/repository/base_repository.dart';
import 'package:meetup_flutter/shared/repository/dio_client.dart';

import '../shared.dart';

@singleton
class FormRepository extends BaseRepository {
  FormRepository(DioClient dioClient) : super(dioClient);

  Future<Either<AuthFailure, bool>> formSubmit({
    required String username,
    required String password,
  }) async {
    Either<AuthFailure, Response> response = await dioClient.testHttpRequest(
        endpoint: '', data: {"username": username, "password": password});

    return response.fold(
      (l) => const Left(AuthFailure.invalidEmailAndPasswordCombination()),
      (r) => const Right(true),
    );
  }
}
