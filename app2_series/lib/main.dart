import 'package:flutter/material.dart';
import 'package:app2_series/add_tv_show_screen.dart';
import 'package:app2_series/custom_drawer.dart';
import 'package:app2_series/tv_show_data.dart';
import 'package:app2_series/tv_show_model.dart';
import 'package:app2_series/tv_show_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<TvShow> tvShows = favTvShowList;

  // Screen Control
  int currentScreenIndex = 0;

  List<Widget> get screens => [
        TvShowScreen(tvShows: tvShows),
        AddTvShowScreen(),
      ];

  void switchScreen(int index) {
    setState(() {
      currentScreenIndex = index;
    });
  }

  // Theme Control
  bool isDark = false;

  void switchTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor: const Color(0xff8716d5));
    final colorSchemeDark = ColorScheme.fromSeed(
      seedColor: const Color(0xff8716d5),
      brightness: Brightness.dark,
    );

    final customTheme = ThemeData(
      colorScheme: colorScheme,
      textTheme: GoogleFonts.montserratAlternatesTextTheme().copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorScheme.onPrimary,
        ),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary, size: 36),
      cardTheme: CardThemeData(color: colorScheme.secondaryContainer),
    );

    final customThemeDark = ThemeData.dark().copyWith(
      colorScheme: colorSchemeDark,
      textTheme: GoogleFonts.montserratAlternatesTextTheme().copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorSchemeDark.primary,
        ),
      ),
      iconTheme: IconThemeData(color: colorSchemeDark.onPrimary, size: 36),
      cardTheme: CardThemeData(color: colorSchemeDark.secondaryContainer),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      darkTheme: customThemeDark,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [const Text('Eu amo séries 🍿')],
          ),
        ),
        drawer: CustomDrawer(
          isDark: isDark,
          switchTheme: switchTheme,
          switchScreen: switchScreen,
        ),
        body: screens[currentScreenIndex],
      ),
    );
  }
}
