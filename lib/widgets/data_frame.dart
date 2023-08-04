import 'package:flutter/material.dart';

class DataFrame extends StatelessWidget {
  const DataFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 320,
          height: 310,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 320,
                  height: 310,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF103F2B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 60,
                child: Container(
                  height: 210, 
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 320,
                        height: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 320,
                              height: 210,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 320,
                                      height: 210,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(width: 3, color: Color(0xFF103F2B)),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 210,
                                    child: Container(
                                      width: 40,
                                      height: 5,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF103F2B),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 98,
                                    top: 210,
                                    child: Container(
                                      width: 10,
                                      height: 5,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF103F2B),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 93,
                top: 14,
                child: SizedBox(
                  width: 160,
                  height: 37,
                  child: Text(
                    'AUGUST',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
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
