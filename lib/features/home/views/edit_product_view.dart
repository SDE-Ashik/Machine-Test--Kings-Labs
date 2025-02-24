

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kings_lab_assignment/features/home/models/product_model.dart';
import 'package:kings_lab_assignment/features/home/models/product_update_model.dart';
import 'package:kings_lab_assignment/features/home/providers/product_update_provider.dart';

class EditProductView extends ConsumerStatefulWidget {
  final Product product;

  const EditProductView({Key? key, required this.product}) : super(key: key);

  @override
  ConsumerState<EditProductView> createState() => _EditProductViewState();
}

class _EditProductViewState extends ConsumerState<EditProductView> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController brandController;
  late TextEditingController categoryController;
  late TextEditingController discountController;
  late TextEditingController priceController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.product.title);
    descriptionController =
        TextEditingController(text: widget.product.description);
    brandController = TextEditingController(text: widget.product.brand);
    categoryController = TextEditingController(text: widget.product.category);
    discountController = TextEditingController(
        text: widget.product.discountPercentage.toString());
    priceController =
        TextEditingController(text: widget.product.price.toString());
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    brandController.dispose();
    categoryController.dispose();
    discountController.dispose();
    priceController.dispose();
    super.dispose();
  }

  void _updateProduct() async {
    final notifier = ref.read(productUpdateProvider.notifier);

    final updateModel = ProductUpdateModel(
      title: titleController.text.trim(),
      description: descriptionController.text.trim(),
      brand: brandController.text.trim(),
      category: categoryController.text.trim(),
      discountPercentage: double.tryParse(discountController.text) ?? 0.0,
      price: double.tryParse(priceController.text) ?? 0.0,
    );

    final result = await notifier.updateProduct(
      id: widget.product.id,
      data: updateModel,
    );

    result.fold(
      (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error: ${failure.message}")),
        );
      },
      (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(success)),
        );
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(productUpdateProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Edit Product'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.greenAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                if (widget.product.thumbnail.isNotEmpty)
                SizedBox(
                  height: 200,
                ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        widget.product.thumbnail,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                const SizedBox(height: 24),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  color: Colors.white.withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        _buildTextField(
                            controller: titleController,
                            label: "Title",
                            icon: Icons.title),
                        const SizedBox(height: 16),
                        _buildTextField(
                            controller: descriptionController,
                            label: "Description",
                            icon: Icons.description,
                            maxLines: 4),
                        const SizedBox(height: 16),
                        _buildTextField(
                            controller: brandController,
                            label: "Brand",
                            icon: Icons.branding_watermark),
                        const SizedBox(height: 16),
                        _buildTextField(
                            controller: categoryController,
                            label: "Category",
                            icon: Icons.category),
                        const SizedBox(height: 16),
                        _buildTextField(
                            controller: discountController,
                            label: "Discount (%)",
                            icon: Icons.percent,
                            keyboardType: TextInputType.number),
                        const SizedBox(height: 16),
                        _buildTextField(
                            controller: priceController,
                            label: "Price",
                            icon: Icons.attach_money,
                            keyboardType: TextInputType.number),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: Colors.teal.shade700,
                            ),
                            onPressed: isLoading ? null : _updateProduct,
                            child: isLoading
                                ? const CircularProgressIndicator(
                                    color: Colors.white)
                                : const Text(
                                    'Update Product',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.teal),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.teal),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.grey.shade100,
      ),
    );
  }
}
