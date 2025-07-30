import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.switchTheme,
    required this.isDark,
    required this.switchScreen
  });

  final bool isDark;
  final Function() switchTheme;
  final Function(int) switchScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Eu Amo Séries 🍿',
                    style: GoogleFonts.montserrat(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton.icon(
                    onPressed: switchTheme,
                    icon: isDark
                        ? Icon(Icons.wb_sunny_rounded, size: 24)
                        : Icon(Icons.nightlight_round_sharp, size: 24),
                    label: Text(
                      'Mudar Tema',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold),
                      ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold),
              ),
            onTap: () {
              switchScreen(0);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text(
              'Adicionar série',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold),
              ),
            onTap: () {
              switchScreen(1);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              'Apenas um coração :)',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold),
              ),
            /*onTap: () {
              switchScreen(1);
              Navigator.of(context).pop();
            },*/
          ),
        ],
      ),
    );
  }
}