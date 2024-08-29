import 'package:sampleapp/utils/themes/custom_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Cubit<ThemeData> {
  ThemeBloc() : super(CustomThemes.lightTheme);


  switchTheme({required bool isDarkTheme})
  {
    emit(isDarkTheme?CustomThemes.darkTheme:CustomThemes.lightTheme);
  }
}
