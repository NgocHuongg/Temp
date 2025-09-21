import 'package:flutter/material.dart';
import 'UI/ui.dart'; // đường dẫn tới file bạn vừa tạo

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFCS_Read_Write',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF0F1E3),
        ),
        useMaterial3: true,

      ),
      home: const MyHomePage(), // 👈 dùng widget bạn đã viết trong ui.dart
    );
  }
}
