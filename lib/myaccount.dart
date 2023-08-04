import 'package:flutter/material.dart';
import 'package:Greenify/home.dart';
import 'package:Greenify/login.dart';
import 'package:Greenify/widgets/info_table.dart';
import 'package:Greenify/widgets/logo_image.dart';

import 'auth.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              BackButton(),
              SignOutButton(),
              ]),
              SizedBox(height: 100,),
              BigAccountIcon(),
              SizedBox(height: 20),
              UserName(),
              SizedBox(height: 35),
              InfoTable(),
              SizedBox(height: 120),
              Logo(width: 47, height: 47),
              SizedBox(height: 6),
              GreenifyCopyright(),
              SizedBox(height: 35)
            ],
          ),
        ),
      )
    );
  }
}

class SignOutButton extends StatelessWidget {
  const SignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        try {
          await Auth().signOut();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        } catch (e) {
          print('Error signing out: $e');
        }
      },
        child: Container(
        width: 32,
        height: 32,
        decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/signout.png"),
        fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}


         
class GreenifyCopyright extends StatelessWidget {
  const GreenifyCopyright({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Created by Greenify @2023',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.7,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Kim Walker',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class BigAccountIcon extends StatelessWidget {
  const BigAccountIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 125,
          height: 125,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0xFF103F2B),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/bigkimwalker.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
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

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      },
        child: Container(
        width: 55,
        height: 37,
        decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/backbutton.png"),
        fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}






