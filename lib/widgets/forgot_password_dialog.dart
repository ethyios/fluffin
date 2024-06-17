import 'package:flutter/material.dart';

void showForgotPasswordDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Esqueci minha senha'),
        content: Text(
          'Isto irá apagar o banco de dados e criar um novo. Deseja continuar?',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Fechar o diálogo
            },
            child: Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              // Lógica de resetar o banco de dados será implementada posteriormente
              Navigator.of(context).pop(); // Fechar o diálogo
            },
            child: Text('Apagar'),
          ),
        ],
      );
    },
  );
}
