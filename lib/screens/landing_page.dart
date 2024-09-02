// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app_flutter/screens/app_signin_screen.dart';
import 'package:todo_app_flutter/screens/home_screen.dart';
import 'package:todo_app_flutter/services/auth.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
    required this.auth,
  }) : super(key: key);
  
  final AuthBase auth;


  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  late  User _user;

@override
  void initState() {
    super.initState();
    _updateUser(widget.auth.currentUser);
  }

  void _updateUser(User? user) {
    setState(() {
      _user = user!;
    });
  }

  @override
  Widget build(BuildContext context) {
if (_user == null) {
      return AppSigninScreen(
        auth: widget.auth,
        onSignIn: _updateUser,
      );
    }
    return HomeScreen(
      auth: widget.auth,
      onSignOut: () => _updateUser(null),
    );  
  }
}