import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kings_lab_assignment/features/home/models/product_update_model.dart';
import 'package:kings_lab_assignment/features/home/services/product_update_service.dart';
import 'package:kings_lab_assignment/utils/helpers/failure.dart';
import 'package:dartz/dartz.dart';

final productUpdateProvider = NotifierProvider<ProductUpdateProvider, bool>(
  () => ProductUpdateProvider(),
);

class ProductUpdateProvider extends Notifier<bool> {
  @override
  bool build() => false; // Initial state (not loading)

  Future<Either<Failure, String>> updateProduct({
    required int id,
    required ProductUpdateModel data,
  }) async {
    state = true; // Set loading to true

    final productService = ref.read(productUpdateService); // Corrected access

    final result = await productService.updateProduct(id: id, data: data);

    result.fold(
      (failure) {
        print("Error: ${failure.message}");
      },
      (success) {
        print("Success: $success");
      },
    );

    state = false; // Reset loading state

    return result;
  }
}
