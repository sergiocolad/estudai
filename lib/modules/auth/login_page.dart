import 'package:estudai/services/auth_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/estudai_logo.png', width: 300, height: 300),
            ElevatedButton.icon(
              onPressed: () async {
              final user = await AuthService().signInWithGoogle();
              
              if (user != null) {
                // Aqui futuramente vamos validar se ele está autorizado
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Bem-vindo, ${user.displayName}!")),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Login cancelado.")),
                );
              }
            },
              icon: const Icon(Icons.login),
              label: const Text("Entrar com Google"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
