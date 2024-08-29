import 'package:sampleapp/bloc/product_bloc/product_state.dart';
import 'package:sampleapp/bloc/splash_bloc/splash_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Cubit<ProductState> {
  ProductBloc() : super(ProductState());

  productCLick(int clickedIndex) async
  {

    emit(ProductState(productCLick: true,productIndex:clickedIndex ));

  }


}