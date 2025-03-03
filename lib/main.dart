import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
import 'providers/entity_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key}); // เพิ่ม const ตรงนี้
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EntityProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Startup Directory',
        theme: ThemeData(primaryColor : const Color.fromARGB(255, 16, 184, 33)),
        home: HomePage(),
      ),
    );
  }
}
