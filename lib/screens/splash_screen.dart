// import 'package:flutter/material.dart';
// import 'package:todo_app_flutter/screens/app_signin_screen.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateToLogin();
//   }
  
//   void _navigateToLogin() async {
//     await Future.delayed(
//       const Duration(seconds: 3),(){
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => AppSigninScreen()),
//         );
//       }
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.indigo[900],
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('assets/images/logo1.png', width: 200, height: 200,),
//           ],)
//       ),
//     );
//   }
// }
