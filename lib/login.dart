import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Greenify/widgets/login_input_box.dart';
import 'package:Greenify/widgets/logo_image.dart';
import 'package:Greenify/widgets/google_sign_in_button.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConfirmPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : '$errorMessage');
  }

  Widget _submitButton() {
  return Container(
    width: 313,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextButton(
        onPressed: isLogin
            ? signInWithEmailAndPassword
            : () {
                if (_controllerPassword.text == _controllerConfirmPassword.text) {
                  createUserWithEmailAndPassword();
                } else {
                  setState(() {
                    errorMessage = 'Passwords do not match';
                  },
                  );
                }
              },
              style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF103F2B)),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(
        isLogin ? 'LOGIN' : 'REGISTER',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.5,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}


  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
          _controllerPassword.clear();
          _controllerConfirmPassword.clear();
        });
      },
      child: Text.rich(
  TextSpan(
    children: [
      TextSpan(
        text: isLogin? 'Don’t have an account yet? ' : 'Already have an account? ',
        style: TextStyle(
          color: Color(0xFF103F2B),
          fontSize: 15,
          fontStyle: FontStyle.italic,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
      ),
      TextSpan(
        text: isLogin? 'Sign Up' : 'Login',
        style: TextStyle(
          color: Color(0xFFE01010),
          fontSize: 15,
          fontStyle: FontStyle.italic,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
      ),
    ],
  ),
)
    );
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 234, 241, 238),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 65),
            const Logo(width: 125, height: 125),
            SizedBox(height: 60),
            InputBox(
              title: 'Email',
              controller: _controllerEmail,
            ),
            SizedBox(height: 20),
            InputBox(
              title: 'Password',
              controller: _controllerPassword,
            ),
            if (!isLogin)
              SizedBox(height: 20),
            if (!isLogin)
              InputBox(
                title: 'Confirm Password',
                controller: _controllerConfirmPassword,
              ),
            SizedBox(height: 10),
            _errorMessage(),
            SizedBox(height: 10),
            _submitButton(),
            SizedBox(height: 30),
            const Or(),
            SizedBox(height: 20),
            GoogleSignInButton(
              displaytext: isLogin? 'Login With Google' : 'Signup With Google',
            ),
            SizedBox(height: 20),
            _loginOrRegisterButton(),
          ],
        ),
      ),
    ),
  );
}

}

class Or extends StatelessWidget {
  const Or({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 106,
          height: 18,
          child: Stack(
            children: [
              const Positioned(
                left: 42,
                top: 0,
                child: Text(
                  'OR',
                  style: TextStyle(
                    color: Color(0xFF103F2B),
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 9,
                child: Container(
                  width: 30,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF103F2B),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 76,
                top: 9,
                child: Container(
                  width: 30,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF103F2B),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
