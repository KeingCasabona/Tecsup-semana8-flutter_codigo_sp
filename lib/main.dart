import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/pages/home_page.dart';
import 'package:flutter_codigo_sp/utils/shared_global.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedGlobal preference = SharedGlobal();
  await preference.initSharedPreferences();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shared Preferences App',
      home: HomePage(),
    );
  }
}
