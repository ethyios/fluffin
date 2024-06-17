import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController _passwordController = TextEditingController();

  void _submitPassword(BuildContext context) {
    // Lógica de submit será implementada posteriormente
    print('Senha digitada: ${_passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onSubmitted: (_) => _submitPassword(context),
            ),
          ),
          SizedBox(width: 8.0),
          ElevatedButton(
            onPressed: () => _submitPassword(context),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
