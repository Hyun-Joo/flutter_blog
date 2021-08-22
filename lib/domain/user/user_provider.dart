import 'package:get/get.dart';

const host = 'http://172.16.0.85:8080';

// 통신 역할
class UserProvider extends GetConnect {
  // 로그인 -> Promise (데이터 약속)
  Future<Response> login(Map data) => post('$host/login', data);
}