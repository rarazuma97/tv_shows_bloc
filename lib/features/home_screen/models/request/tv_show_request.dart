
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'tv_show_request.freezed.dart';
part 'tv_show_request.g.dart';

@freezed
class TvShowRequest extends RequestBase with _$TvShowRequest {
  TvShowRequest._();
  factory TvShowRequest() = _TvShowRequest;
	
  factory TvShowRequest.fromJson(Map<String, dynamic> json) =>
			_$TvShowRequestFromJson(json);
      
        @override
        String get endpoint => '/search/shows?q=query';
      
        @override
        Map<String, dynamic> toJson() => {};
}
