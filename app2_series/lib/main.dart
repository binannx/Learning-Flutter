import 'package:app2_series/tv_show_card.dart';
import 'package:app2_series/tv_show_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    var color = Colors.deepOrange; 

    var colorScheme = ColorScheme.fromSeed(
      seedColor: color, 
      brightness: Brightness.light
      );

    var colorSchemeDark = ColorScheme.fromSeed(
      seedColor: color, 
      brightness: Brightness.dark
      );

    var customTheme = ThemeData(
      colorScheme: colorScheme,
      fontFamily: GoogleFonts.indieFlower().fontFamily,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: colorScheme.primary,
        titleTextStyle: TextStyle(
          fontSize: 40, 
          fontWeight: FontWeight.bold, 
          color: colorScheme.primary,
          fontFamily: GoogleFonts.indieFlower().fontFamily,
        ),
      ));

      var customThemeDark = ThemeData(
      colorScheme: colorSchemeDark,
      fontFamily: GoogleFonts.indieFlower().fontFamily,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: colorSchemeDark.onPrimary,
        titleTextStyle: TextStyle(
          fontSize: 40, 
          fontWeight: FontWeight.bold, 
          color: colorScheme.primary,
          fontFamily: GoogleFonts.indieFlower().fontFamily,
        ),
      ),

      cardTheme: CardThemeData(
        color: colorSchemeDark.secondaryContainer,
        shadowColor: colorSchemeDark.onSurface,
        elevation: 3,
        margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      darkTheme: customThemeDark,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(title: const Text('Eu amo séries 🍿')),
        /*body: ListView(
          children: [
            ...favTvShowList.map(
              (tvShow) => TvShowCard(tvShow: tvShow)
              ),
          ],
        ), */

        body: ListView.builder(
          itemCount: favTvShowList.length,
          itemBuilder: (context, index) => TvShowCard(tvShow: favTvShowList[index], index: index),
        )
      ),
    );
  }
}
