import 'package:advicer/application/advicer/advicer_bloc.dart';
import 'package:advicer/presentation/advicer/advicer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'application/theme/theme_service.dart';
import 'injection.dart';
import 'theme.dart';

import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await di.sl<ThemeService>().init();
  runApp(ChangeNotifierProvider(
    create: (context) => di.sl<ThemeService>(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
  
      builder: (context,themeService, child) {
        return MaterialApp(
          title: 'Advicer',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeService.isDarkModeOn? ThemeMode.dark: ThemeMode.light,
          home: BlocProvider(
            create: (context) => sl<AdvicerBloc>(),
            child: AdvicerPage(),
          ),
        );
      },
    );
  }
}
