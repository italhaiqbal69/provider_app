import 'package:flutter/material.dart';
import 'package:my_app/provider/count_provider.dart';
import 'package:my_app/provider/favourite_provider.dart';
import 'package:my_app/provider/slider_provider.dart';
import 'package:my_app/provider/themeChanger_provider.dart';
import 'package:my_app/theme_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => SliderProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeProvider = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeProvider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.red,
            ),
            home: ThemeScreen(),
          );
        }));
  }
}
