import 'package:flutter/material.dart';

const ColorList = <Color>[
  Colors.blue,
  Colors.black,
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

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected colors must be greater than 0'),
        assert(selectedColor < ColorList.length , 'Selected colors must be less or equal than ${ ColorList.length -1 }');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: ColorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )

  );
}
