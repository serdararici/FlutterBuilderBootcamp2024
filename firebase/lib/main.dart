import 'package:firebase/core/localization/locale_manager.dart';
import 'package:firebase/core/theme/theme_manager.dart';
import 'package:firebase/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ThemeManager()),
      ChangeNotifierProvider(create: (_) => LocaleManager()),
    ],
      child: Consumer2<ThemeManager, LocaleManager>(
        builder: (context, themeManager,localeManager, child) {
          return MaterialApp(
            title: 'Firebase App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeManager.themeMode,
            locale: localeManager.currentLocale,
            localizationsDelegates: const[
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const[
              Locale('en'),
              Locale('tr'),
            ],
            home: HomeScreen(),
          );
        },
      ),

    );

    return ChangeNotifierProvider(
      create: (_) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (context, themeManager, child) {
          return MaterialApp(
            title: 'Firebase App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeManager.themeMode,
            home: HomeScreen(),
          );
        },
      ),
    );

  }
}