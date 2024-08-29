import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/app_bar_bloc/app_bar_bloc.dart';
import '../../bloc/theme_bloc/theme_bloc.dart';
import '../../data/app_bar_data.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({super.key, required super.preferredSize, required super.child});
}

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarBloc, AppBarData>(builder: (context, state) {
      return Container(
        color: Colors.transparent,
        child: Row(

          children: [
            const SizedBox.shrink(),
            const Spacer(),
            Switch(
                value: state.isDarkThemeSelected,
                onChanged: (value) {
                  BlocProvider.of<AppBarBloc>(context).switchTheme(value);
                  BlocProvider.of<ThemeBloc>(context)
                      .switchTheme(isDarkTheme: value);
                })
          ],
        ),
      );
    });
  }
}
