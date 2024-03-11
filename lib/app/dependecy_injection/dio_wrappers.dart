import 'package:http_services/http_services.dart';

abstract class DioWrapper {
  final Dio dio;
  DioWrapper(this.dio);
}

class DioForApi extends DioWrapper {
  DioForApi(super.dio);
}
