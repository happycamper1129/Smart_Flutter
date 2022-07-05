

import 'package:dio/dio.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:jewelery_marketplace/models/user.dart';

import 'dio_client.dart';

class APIService {
  DioClient? dioClient;

  Dio? dio;

  APIService(Dio dio) {
    this.dio = dio;
    dioClient = new DioClient(dio);
  }

  Options accessTokenOptions() {
    Options dioOption = Options(headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization' : auth.currentUser?.getIdToken(),
      'X-Requested-With': 'XMLHttpRequest',
    });
    return dioOption;
  }

  Options accessTokenWithToken(token) {
    Options dioOption = Options(headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'token': "Bearer " + token,
      'X-Requested-With': 'XMLHttpRequest',
    });
    return dioOption;
  }


  Future<User> updateUserInfo(Map<String, dynamic> params) async {
    Response response = await dioClient!.post(
        'https://trade-fair-app.uc.r.appspot.com/user/createUser',
        data: params,
        options: accessTokenOptions());

    print('register_response --- ${response.data}');
    User user = User.fromJson(response.data);
    return user;
  }


}
