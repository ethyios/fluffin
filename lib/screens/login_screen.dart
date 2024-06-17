import 'package:flutter/material.dart';
import '../widgets/password_field.dart';
import '../widgets/forgot_password_dialog.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            PasswordField(),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () => showForgotPasswordDialog(context),
                child: Text('Esqueci minha senha'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
