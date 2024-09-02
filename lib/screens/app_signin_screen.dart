// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_flutter/services/auth.dart';

import 'package:todo_app_flutter/widgets/custom_button.dart';

class AppSigninScreen extends StatelessWidget {
  // final AuthService _auth = AuthService(); 

  final AuthBase auth;
  final void Function(User) onSignIn;

  const AppSigninScreen({super.key, required this.auth, required this.onSignIn});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _buildContent(),
      );
  }

  // Future<void> _signInAnonymous() async {
  //     dynamic result = await _auth.signInAnon();
  //     if(result == null){
  //       print('error sign in ');
  //     }else{
  //       print('signed in');
  //       print(result.uid);
  //     }
  // }

  Future<void>_signInAnonymously() async {
      try {
      final user = await auth.signInAnonymously();
      onSignIn(user!);
    } catch (e) {
      print(e.toString());
    }
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          CustomButtonWidget(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/images/google-logo.png'),
                Text('Login with Google'),
                Opacity(
                  opacity: 0, 
                  child:Image.asset('assets/images/google-logo.png'),
                ),
              ],
            ),
            color: const Color.fromARGB(255, 237, 85, 85),
            onPressed: () {},
          ),
          const SizedBox(height: 5),
          CustomButtonWidget(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/images/facebook-logo.png'),
                Text('Login with Facebook'),
                Opacity(
                  opacity: 0, 
                  child:Image.asset('assets/images/google-logo.png'),
                ),
              ],
            ),
            color: const Color.fromARGB(255, 47, 91, 224),
            onPressed: () {},
          ),
          const Text('or',
              textAlign: TextAlign.center,
          ),
          CustomButtonWidget(
            color: const Color.fromARGB(255, 55, 128, 196),
            child: Text('Login with Anonymous'),
            onPressed:() => _signInAnonymously(), 
          ),
        ],        
      ),
    );
  }
}
