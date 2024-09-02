// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:todo_app_flutter/screens/app_signin_screen.dart';
import 'package:todo_app_flutter/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.auth,
    required this.onSignOut,
  }) : super(key: key);

  final AuthBase auth;
  final VoidCallback onSignOut;
  // User? _user;

Future<void> _signOut() async {
    try {
      await auth.signOut();
      onSignOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          TextButton(
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: _signOut,
          ),
        ],
      ),
    );
  }
}