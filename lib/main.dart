import 'package:brand/providers/brand_provider.dart';
import 'package:brand/screens/brand_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var changeNotifierProvider = ChangeNotifierProvider<brandProvider>(
          create: (context) => brandProvider(),
        );
    return MultiProvider(
      providers: [
        changeNotifierProvider,
      ],
      child: const MaterialApp(
        home: BrandScreen(),
      ),
    );
  }
}