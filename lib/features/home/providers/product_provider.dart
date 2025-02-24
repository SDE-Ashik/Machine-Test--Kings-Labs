import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kings_lab_assignment/features/home/models/product_model.dart';
import 'package:kings_lab_assignment/features/home/services/product_services.dart';

final productProvider = NotifierProvider<ProductProvider, List<Product>>(
  () => ProductProvider(),
);

class ProductProvider extends Notifier<List<Product>> {
  final ProductServices _productServices = ProductServices();

  @override
  List<Product> build() {
    _fetchProducts();
    return [];
  }

  Future<void> _fetchProducts() async {
    final result = await _productServices.getProducts();
    result.fold(
      (failure) {
        // Handle the failure, e.g., log it or update an error state
        print("Error fetching products: ${failure.message}");
      },
      (productResponse) {
        // Update the state with the list of products
        state = productResponse as List<Product>;
      },
    );
  }
}
