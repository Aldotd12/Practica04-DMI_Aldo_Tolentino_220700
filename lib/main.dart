import 'package:app_inicio/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Aplicación de Inicio',
      home: Scaffold(
        body: Center(
          child: FilledButton(child: Text("Da Click"), onPressed: () {}),
        ),
      ),
    );
  }
}
