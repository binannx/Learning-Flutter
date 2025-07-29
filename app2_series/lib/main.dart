import 'package:app2_series/custom_drawer.dart';
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

    var color = const Color.fromARGB(255, 141, 3, 146); 

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
      fontFamily: GoogleFonts.montserrat().fontFamily,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: colorScheme.primary,
        titleTextStyle: TextStyle(
          fontSize: 50, 
          fontWeight: FontWeight.bold, 
          color: colorScheme.onPrimary,
          fontFamily: GoogleFonts.caveat().fontFamily,
        ),),

      cardTheme: CardThemeData(
        color: colorScheme.secondaryContainer,
        shadowColor: colorScheme.onSurface,
        elevation: 7,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        ),
        );

    
      var customThemeDark = ThemeData(
      colorScheme: colorSchemeDark,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: colorSchemeDark.onPrimary,
        titleTextStyle: TextStyle(
          fontSize: 40, 
          fontWeight: FontWeight.bold, 
          color: colorSchemeDark.primary,
          fontFamily: GoogleFonts.caveat().fontFamily,
        ),
      ),

      cardTheme: CardThemeData(
        color: colorSchemeDark.secondaryContainer,
        shadowColor: colorScheme.onSurface,
        elevation: 7,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical:10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      darkTheme: customThemeDark,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Eu amo séries 🍿')),
          drawer: DrawerButtonIcon(),

        ),
      );

      
        /*body: ListView(
          children: [
            ...favTvShowList.map(
              (tvShow) => TvShowCard(tvShow: tvShow)
              ),
          ],
        ), */
        
  }
}
