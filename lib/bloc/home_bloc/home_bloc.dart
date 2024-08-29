import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/home_data/home_model.dart';
import '../../data/home_data/product_model.dart';

class HomeBloc extends Cubit<HomeModel> {
  HomeBloc() : super(HomeModel());

  initHome() async {
    emit(HomeModel(isLoading: true));

    DatabaseReference ref = FirebaseDatabase.instance.ref();
    final offers = await ref.child("offers").once();
    final shirts = await ref.child("shirts").once();
    final shoe = await ref.child("shoe").once();
    final List<dynamic> offersData = offers.snapshot.value as List<dynamic>;
    final List<dynamic> shirtsData = shirts.snapshot.value as List<dynamic>;
    final List<dynamic> shoesData = shoe.snapshot.value as List<dynamic>;
    final shirtsList = List.generate(shirtsData.length, (index) {
      return ProductModel.fromJson(shirtsData[index]);
    });
    final shoeList = List.generate(shoesData.length, (index) {
      return ProductModel.fromJson(shoesData[index]);
    });
    emit(HomeModel(
        isLoading: false,
        isLoginSuccess: true,
        shirts: shirtsList,
        shoe: shoeList,
        offers: offersData.cast<String>()));
  }

  shirtViewAllClicked()
  {

    emit(HomeModel(
        isLoading: false,
        isLoginSuccess: true,
        shirts: state.shirts,
        shoe: state.shoe,
        isShirtViewAllCLiked: true,
        offers: state.offers));
  }

  shoeViewAllClicked()
  {

    emit(HomeModel(
        isLoading: false,
        isLoginSuccess: true,
        shirts: state.shirts,
        shoe: state.shoe,
        isShirtViewAllCLiked: false,
        isShoeViewAllCLick: true,
        offers: state.offers));
  }
}
