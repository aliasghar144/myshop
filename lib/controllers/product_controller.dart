import 'package:get/get.dart';
import 'package:myshop/models/product.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController{

  List products = [].obs;

  @override
  void onInit() {
    super.onInit();
    getProduct();
  }

  getProduct() async {
    products.clear();
    final url = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(url, headers: {
      'Accept': 'application/json',
    });
    products.addAll(productFromJson(response.body));
  }
}