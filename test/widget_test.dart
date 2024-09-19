// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sampleapp/bloc/app_bar_bloc/app_bar_bloc.dart';
import 'package:sampleapp/bloc/home_bloc/home_bloc.dart';
import 'package:sampleapp/bloc/login_bloc/login_bloc.dart';
import 'package:sampleapp/bloc/product_bloc/product_bloc.dart';
import 'package:sampleapp/bloc/size_config_bloc/size_config_bloc.dart';
import 'package:sampleapp/bloc/splash_bloc/splash_bloc.dart';
import 'package:sampleapp/bloc/theme_bloc/theme_bloc.dart';

import 'package:sampleapp/main.dart';
import 'package:sampleapp/presentation/login_module/login_screen.dart';
import 'package:sampleapp/presentation/ui_constant/ui_constants.dart';
import 'package:sampleapp/utils/themes/custom_themes.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.

    await tester.pumpWidget(MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (BuildContext context) => ThemeBloc(),
        ),
        BlocProvider<SplashBloc>(
          create: (BuildContext context) => SplashBloc(),
        ),
        BlocProvider<LoginBloc>(
          create: (BuildContext context) => LoginBloc(),
        ),
        BlocProvider<AppBarBloc>(
          create: (BuildContext context) => AppBarBloc(),
        ),
        BlocProvider<SizeConfigBloc>(
          create: (BuildContext context) => SizeConfigBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => HomeBloc(),
        ),
        BlocProvider<ProductBloc>(
          create: (BuildContext context) => ProductBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeData>(builder: (context, state) {
        return MaterialApp(
          theme: state,
          darkTheme: CustomThemes.darkTheme,
          home: LoginScreen(),
        );
      }),
    ));

    final titleFinder = find.text(UiConstants.login);

    //Act - Find button by type
    var fNameField = find.byKey(const Key("email"));
    await tester.enterText(fNameField, "sav@gmail.com");
    expect(fNameField, findsNWidgets(1));
    expect(titleFinder, findsAny);


  });
}
