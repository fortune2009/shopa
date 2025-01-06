import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product_model.dart';
import '../services/api_service.dart';

final productProvider = FutureProvider<List<Product>>((ref) {
  final apiService = ApiService(baseUrl: 'https://fakestoreapi.com');
  return apiService.fetchProducts();
});
