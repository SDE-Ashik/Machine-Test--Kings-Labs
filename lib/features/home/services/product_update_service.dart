import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kings_lab_assignment/features/home/models/product_update_model.dart';
import 'package:kings_lab_assignment/utils/helpers/failure.dart';

final productUpdateService = Provider((ref) => ProductUpdateService());

class ProductUpdateService {
  final String baseUrl = "https://dummyjson.com/products/";
  final Dio dio = Dio();

  Future<Either<Failure, String>> updateProduct({
    required int id,
    required ProductUpdateModel data,
  }) async {
    try {
      final url = "$baseUrl$id";
      final response = await dio.put(
        url,
        data: data.toJson(),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      if (response.statusCode == 200) {
        return Right("Product updated successfully");
      } else {
        return Left(Failure("Failed to update product"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
