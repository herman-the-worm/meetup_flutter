import 'package:injectable/injectable.dart';

import 'dio_client.dart';

@singleton
class BaseRepository {
  final DioClient dioClient;
  BaseRepository(
    this.dioClient,
  );
}
