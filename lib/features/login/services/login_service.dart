
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kings_lab_assignment/features/login/models/login_model.dart';
import 'package:kings_lab_assignment/features/login/models/login_responsive_model.dart';

import 'package:kings_lab_assignment/utils/helpers/failure.dart';

final loginServiceProvider = Provider((ref) => LoginService());

class LoginService {
  // You can use your AppSecrets for dynamic URLs in production.
  // final String baseUrl = "${AppSecrets.BACKEND_BASE_URL}/auth/login";
  final String baseUrl = "https://dummyjson.com/auth/login";
  final Dio dio = Dio();

  Future<Either<Failure, LoginResponseModel>> loginUser({
    required LoginModel loginModel,
  }) async {
    try {
      print('Sending login request to: $baseUrl');
      print(loginModel.toJson());

      final response = await dio.post(
        baseUrl,
        data: loginModel.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      print('Response data: ${response.statusCode}');

      if (response.statusCode == 200) {
        return right(LoginResponseModel.fromJson(response.data));
      } else {
        return Left(Failure("Something went wrong!"));
      }
    } on DioException catch (e) {
      print("DioException caught: ${e.toString()}");
      final errorDetail = e.response?.data['detail'] ??
          e.response?.data['message'] ??
          "Something went wrong!";
      return Left(Failure(errorDetail));
    } catch (e) {
      return Left(Failure("Something went wrong!"));
    }
  }
}
