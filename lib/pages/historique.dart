import 'package:flutter/material.dart';

class Historique extends StatelessWidget {
  const Historique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historique'),
      ),
      body: const Center(
        child: Text("Bienvenue à la page de l'historique de vos transactions"),
      ),
    );
  }
}
