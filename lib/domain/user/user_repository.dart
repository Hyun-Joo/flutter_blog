import 'package:flutter_blog/controller/dto/LoginReqDto.dart';
import 'package:flutter_blog/domain/user/user_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';

// 통신을 호출 -> 응답되는 데이터를 가공 (json -> Dart 오브젝트)
class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<void> login(String username, String password) async {
    LoginReqDto loginReqDto = LoginReqDto(username, password);

    Response response = await _userProvider.login(loginReqDto.toJson());
    print('=======');
    print(response.body);
    print('=======');
    print(response.headers);
  }
}