import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart' hide TextStyle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleapp/bloc/home_bloc/home_bloc.dart';
import 'package:sampleapp/presentation/splash_module/splash_screen.dart';
import 'package:sampleapp/utils/themes/custom_themes.dart';

import 'bloc/app_bar_bloc/app_bar_bloc.dart';
import 'bloc/login_bloc/login_bloc.dart';
import 'bloc/product_bloc/product_bloc.dart';
import 'bloc/size_config_bloc/size_config_bloc.dart';
import 'bloc/splash_bloc/splash_bloc.dart';
import 'bloc/theme_bloc/theme_bloc.dart';
import 'data/home_data/product_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(


  options: const FirebaseOptions(
    apiKey: 'AIzaSyDzTRyB_KhjnrcJmv3IXSBO82KCHa6u8oY',
    appId: '438444560321',
    messagingSenderId: 'sendid',
    projectId: 'sampleapp-a672e',
    storageBucket: 'sampleapp-a672e.appspot.com',
  ));

 /* FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MultiBlocProvider(
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
        BlocProvider<  ProductBloc>(
          create: (BuildContext context) => ProductBloc(),
        ),



      ],
      child: BlocBuilder<ThemeBloc, ThemeData>(builder: (context, state) {
        return MaterialApp(
          theme: state,
          darkTheme: CustomThemes.darkTheme,
          home: const SplashScreen(),
        );
      }),
    );
  }
}
