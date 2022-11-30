import 'dio_client.dart';

class BaseRepository {
  final DioClient dioClient;
  BaseRepository(
    this.dioClient,
  );
}
