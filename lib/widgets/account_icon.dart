import 'package:flutter/material.dart';
import 'package:Greenify/myaccount.dart';

class AccountIcon extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyAccount()));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(250, 0, 0, 0),
        child: SizedBox(
        width: 50,
        height: 50,
        child: Stack(
          children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 50,
            height: 50,
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
            width: 50,
            height: 50,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: AssetImage('assets/kim.png'),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
        ),
          ],
        ),
      ),
      )
    );
  }
}
