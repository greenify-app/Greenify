import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const InputBox({
    required this.title,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313,
      height: 50,
      child: Stack(
        children: [
          Container(
            width: 313,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0x4C2A8F42),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          
          Positioned.fill(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: title,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 17,
                ),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
