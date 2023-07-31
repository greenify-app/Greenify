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
      width: 333,
      height: 48,
      child: Stack(
        children: [
          Container(
            width: 333,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0x4C2A8F42),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          
          // Add the TextFormField here to overlay it on top of the placeholder text
          Positioned.fill(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: title, // Using the 'title' as the hint text
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10, // You can adjust this value to match the positioning of the text
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
