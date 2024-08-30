import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screens/login_screen.dart';
import 'package:todo_app_flutter/widgets/widget_manager.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(height: 40),

              WidgetManager.customTextField(
                labelText: 'Email',
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              WidgetManager.customTextField(
                labelText: 'Password',
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              WidgetManager.customTextField(
                labelText: 'Confirm Password',
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              WidgetManager.customButton(
                text: 'Create Account',
                onPressed: () { 

                },              
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have account ?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>const LoginScreen(),
                        ),
                      );
                    },
                    child:const Text('Sign In',style: TextStyle(color: Colors.blue),),
                  ),
                ],)
            ],
          ),
        ),
      ),
    );
  }
}