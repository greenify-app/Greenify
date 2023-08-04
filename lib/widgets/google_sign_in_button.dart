import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../auth.dart';
import '../home.dart';

class GoogleSignInButton extends StatelessWidget {

  final String displaytext;

  const GoogleSignInButton({
    required this.displaytext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        try {
          UserCredential userCredential = await Auth().signInWithGoogle();
          // After successful Google Sign-In, navigate to the HomePage
          if (userCredential.user != null) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
        } on FirebaseAuthException catch (e) {
          print('Error signing in with Google: ${e.message}');
        }
      },
  child: Container(
    width: 313,
    height: 52,
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x4C2A8F42),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x3F2A9044),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/google_logo.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          displaytext,
          style: const TextStyle(
            color: Color(0xFF103F2B),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  ),
);
  }
}