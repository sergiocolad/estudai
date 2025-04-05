import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'modules/shared/theme/app_theme.dart';
import 'modules/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const EstudaiApp());
}

class EstudaiApp extends StatelessWidget {
  const EstudaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estudai',
      theme: AppTheme.light,
      home: const LoginPage(),
    );
  }
}