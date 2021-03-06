import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(backgroundColor: Colors.brown[400], elevation: 0.0, title: Text('Sign in to brew crew')),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          child: RaisedButton(
            child: Text('Sign in Anon'),
            onPressed: () async {
              dynamic result = await _auth.signInAnon();
              if (result == null) {
                print("Could not sign in");
              } else {
                print(result);
                print('sign in');
              }
            },
          )),
    );
  }
}
