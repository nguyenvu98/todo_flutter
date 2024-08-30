import 'package:flutter/material.dart';
import 'package:todo_app_flutter/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: Text(widget.title),
      ),
      body: const Center(
        child: Text(
          'Home Screen'
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );  
  }
}