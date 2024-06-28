import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_light.dart';
import 'theme_dark.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme(bool isDarkMode) {
    _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class ThemeNotifier extends StatelessWidget {
  final Widget child;

  ThemeNotifier({required this.child});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: child,
    );
  }
}
