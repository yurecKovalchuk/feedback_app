import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../dto/dto.dart';

class ApiClient extends http.BaseClient {
  ApiClient(this._inner, this._customHeaders);

  final http.Client _inner;

  final Map<String, String> _customHeaders;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['content-type'] = 'application/json; charset=utf-8';
    request.headers['accept'] = 'application/json';

    request.headers.addAll(_customHeaders);

    return _inner.send(request);
  }
}

@injectable
class ApiDatasource {
  ApiDatasource({
    @Named('baseUrl') required this.baseUrl,
  });

  final Uri baseUrl;

  late final apiClient = ApiClient(http.Client(), {});

  get contact => '/test/contact';

  Uri _endpoint(String path) => baseUrl.replace(path: baseUrl.path + path);

  Future<UserDTO> addFeedback(UserDTO userDTO) async {
    final path = _endpoint('$contact');
    final response = await apiClient.post(
      path,
      body: jsonEncode(
        userDTO.toJson(),
      ),
    );
    var jsonResult = jsonDecode(response.body);
    return UserDTO.fromJson(jsonResult);
  }
}
