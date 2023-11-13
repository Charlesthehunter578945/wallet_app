import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/models/account.dart';
import 'home.dart';

Future<void> main() async {
  runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(AccountAdapter());
  await Hive.openBox('accountsBox');
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.blue.shade900),
      title: 'Wallet App',
      home: Home(),
    );
  }
}
