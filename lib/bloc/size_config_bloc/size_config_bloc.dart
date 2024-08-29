import 'package:sampleapp/data/size_config/size_config_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SizeConfigBloc extends Cubit<SizeConfigData> {
  SizeConfigBloc() : super(SizeConfigData(height: 0.0, width: 0.0));

  setBasicData({required double height, required double width}) {
    emit(SizeConfigData(height: height, width: width));
  }
}
