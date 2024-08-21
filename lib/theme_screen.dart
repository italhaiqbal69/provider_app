import 'package:flutter/material.dart';
import 'package:my_app/provider/themeChanger_provider.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Changing'),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('Light Theme'),
              value: ThemeMode.light,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.changeTheme),
          RadioListTile<ThemeMode>(
              title: Text('Dark Theme'),
              value: ThemeMode.dark,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.changeTheme),
          RadioListTile<ThemeMode>(
              title: Text('Default Theme'),
              value: ThemeMode.system,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.changeTheme),
        ],
      ),
    );
  }
}
