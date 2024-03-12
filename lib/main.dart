import 'package:flutter/material.dart';
import 'package:tugas1_moble/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Penamaan aplikasi
      title: 'Tugas 1 Mobile',
      // Pemanggilan page Login untuk tampilan pertama aplikasi
      home: LoginPage(),
      // Menghilangkan banner debug
      debugShowCheckedModeBanner: false,
    );
  }
}
