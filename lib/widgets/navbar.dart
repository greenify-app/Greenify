import 'package:flutter/material.dart';

import 'package:Greenify/home.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 54,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 320,
              height: 54,
              decoration: ShapeDecoration(
                color: const Color(0xFF103F2B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x7A103F2B),
                    blurRadius: 4,
                    offset: Offset(-5, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 27,
            top: 7.5,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 39,
                    height: 39,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withOpacity(0.12),
                        width: 19.5,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/home.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 146,
            top: 12,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => _widgetName2()));
              },
              child: Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/camera.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 262,
            top: 12,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => _widgetName3()));
              },
              child: Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/chat.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class _widgetName1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget 1")),
      body: const Center(
        child: Text("This is Widget 1"),
      ),
    );
  }
}

class _widgetName2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget 2")),
      body: const Center(
        child: Text("This is Widget 2"),
      ),
    );
  }
}

class _widgetName3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget 3")),
      body: const Center(
        child: Text("This is Widget 3"),
      ),
    );
  }
}
