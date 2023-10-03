import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.indigoAccent,
  Colors.pink,
  Colors.green,
  Colors.purple,
  Colors.cyan,
  Colors.yellow,
  Colors.red,
  Colors.orange
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0, 'Selected colors must be greater than 0'),
        assert(selectedColor < colorList.length,
            'Selected colors must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode

  }) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode,
    );
}
