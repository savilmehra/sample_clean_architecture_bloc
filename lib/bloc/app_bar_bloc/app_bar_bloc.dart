
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/app_bar_data.dart';

class AppBarBloc extends Cubit<AppBarData> {
  AppBarBloc() : super(AppBarData(isDarkThemeSelected: false));

  switchTheme(isDarkTheme) {
    emit(AppBarData(isDarkThemeSelected: isDarkTheme));
  }
}
