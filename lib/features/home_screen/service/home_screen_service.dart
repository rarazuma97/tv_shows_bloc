import 'package:http_services/http_services.dart';
import 'package:tv_show_bloc/features/home_screen/models/request/tv_show_request.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/tv_show_response.dart';

class HomeScreenService extends HttpServiceBase {
  HomeScreenService(super.dioInstance);

  Future<TvShowResponse> getShows(TvShowRequest request) => getQuery(
      request: request,
      mapper: (json, _) => TvShowResponse.fromJson(json),
      orElse: (data, _) => TvShowResponse.fromJson({'showList': data}),
      allowCache: false);
}
