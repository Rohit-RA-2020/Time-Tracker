import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/app/sign_in/email_signin_form.dart';
import 'package:time_tracker_flutter/services/auth.dart';

class EmailSignInPage extends StatelessWidget {
  EmailSignInPage({@required this.auth});
  final AuthBase auth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        elevation: 2.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
            child: EmailSignInForm(
          auth: auth,
        )),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
