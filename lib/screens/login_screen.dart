import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screens/register_screen.dart';
import 'package:todo_app_flutter/widgets/widget_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  'Login',
                  style: TextStyle(fontSize: 40,),
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

              Row(
                children: [
                  const Text("Forget Password ?"),
                  TextButton(
                    onPressed: (){},
                    child:const Text('Click here', style: TextStyle(color: Colors.blue),)
                  ),
                ],
              ),

              WidgetManager.customButtonFullWidth(
                text: 'Submit',
                onPressed: () {  },              
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You don't have any account ?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>const RegisterScreen(),
                        ),
                      );
                    },
                    child:const Text('Register here',style: TextStyle(color: Colors.blue),),
                  ),
                ],)


            ],
          ),
        ),
      ),
    );
  }
}
