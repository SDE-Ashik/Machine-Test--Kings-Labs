import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kings_lab_assignment/features/home/models/product_model.dart';
import 'package:kings_lab_assignment/utils/helpers/failure.dart';

final productServiceProvider = Provider((ref) => ProductServices());

class ProductServices {
  // Updated endpoint to "products" based on the JSON response
  final String baseUrl = "https://dummyjson.com/products";
  final Dio dio = Dio();

 Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final response = await dio.get(baseUrl);
      print('Status Code: ${response.statusCode}');
      print('Response Data: ${response.data}');

      if (response.statusCode == 200) {
        // Assuming the JSON response has a "products" key that contains a list of product objects.
        final List<dynamic> productsJson = response.data['products'];
        final List<Product> productsList =
            productsJson.map((json) => Product.fromJson(json)).toList();
        print('Parsed Product List: $productsList');
        return Right(productsList);
      } else {
        return Left(Failure("Something went wrong!"));
      }
    } on DioException catch (e) {
      final errorDetail =
          (e.response?.data is Map && e.response?.data['message'] != null)
              ? e.response?.data['message']
              : "Something went wrong!";
      return Left(Failure(errorDetail));
    } catch (e) {
      return Left(Failure("Something went wrong!"));
    }
  }

}
