import 'package:greenify/auth.dart';
import 'package:flutter/material.dart';
import 'package:greenify/home.dart';
import 'package:greenify/login.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return const LoginPage();
          }
      })
    );
  }
}