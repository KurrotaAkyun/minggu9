import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:minggu9/model/product.dart';

class Purchase extends GetxController{
  var products = <Product>[].obs;
  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async{
    await Future.delayed(Duration(seconds: 1));

    var serverResponse = [
      Product(1, "Mangga", "image1",
      "this is a Product that we are going to show by getx", 300.0),
       Product(1, "Apple", "image2",
      "this is a Product that we are going to show by getx", 300.0),
       Product(1, "Jeruk", "image3",
      "this is a Product that we are going to show by getx", 300.0),
       Product(1, "Semangka", "image4",
      "this is a Product that we are going to show by getx", 300.0),
       Product(1, "Lemon", "image5",
      "this is a Product that we are going to show by getx", 300.0),
       Product(1, "Alpukat", "image6",
      "this is a Product that we are going to show by getx", 300.0),
    ];

    products.value = serverResponse;
  }
}