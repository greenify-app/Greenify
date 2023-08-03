import 'package:flutter/material.dart';
import 'package:Greenify/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Greenify/widgets/account_icon.dart';
import 'package:Greenify/widgets/data_frame.dart';
import 'package:Greenify/widgets/monthly_data.dart';
import 'package:Greenify/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('FirebaseAuth Demo');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton() {
    return ElevatedButton(onPressed: signOut, child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AccountIcon(),
                SizedBox(height: 25),
                DataFrame(),
                SizedBox(height: 25),
                MonthlyDataAnalysis(),
                SizedBox(height: 25),
                NavBar(),
                SizedBox(height: 45),
                ],
            ))
               );
  }
}

