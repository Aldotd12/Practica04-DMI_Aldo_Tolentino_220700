import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.purple,
  Colors.black,
  Colors.blue,
  Color.fromARGB(255, 0, 60, 255),
  Colors.yellow,
  Colors.orange,
  Colors.red,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0,
        'La posicion del color seleccionado debe ser mayor a 0',
      ),
      assert(
        selectedColor < colorList.length,
        'La posicion del color seleccionado debe ser menor a la lista de colores disponibles',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    brightness: Brightness.light,
  );
}
