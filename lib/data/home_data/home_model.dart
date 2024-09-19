import 'package:sampleapp/data/home_data/mini_app_model.dart';
import 'package:sampleapp/data/home_data/product_model.dart';

class HomeModel {
  final List<String>? offers;
  final List<ProductModel>? shirts;
  final List<ProductModel>? shoe;
  final List<MiniAppModel>? miniAppsData;
  final bool isLoading;
  final bool isLoginSuccess;
  final bool isShirtViewAllCLiked;
  final bool isShoeViewAllCLick;

  HomeModel(
      {this.offers,
        this.miniAppsData,
      this.isLoading = false,
      this.isLoginSuccess = false,
      this.isShirtViewAllCLiked = false,
      this.isShoeViewAllCLick = false,
      this.shirts,
      this.shoe});
}
