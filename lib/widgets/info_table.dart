import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  const InfoTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 319,
          height: 136,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 319,
                  height: 136,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1,
                        top: 0.96,
                        child: Container(
                          width: 317,
                          height: 133,
                          decoration: const ShapeDecoration(
                            color: Color(0x66C67575),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.50,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFF103F2B),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 234.50,
                        top: 136,
                        child: Transform(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                          child: Container(
                            width: 136,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.55,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF103F2B),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 43.96,
                        child: Container(
                          width: 319,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.55,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF103F2B),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 87.96,
                        child: Container(
                          width: 319,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.55,
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
              ),
              const Positioned(
                left: 271,
                top: 15.96,
                child: Text(
                  '0',
                  style: TextStyle(
                    color: Color(0xFFE01010),
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Positioned(
                left: 271,
                top: 57.96,
                child: Text(
                  '0',
                  style: TextStyle(
                    color: Color(0xFFE01010),
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Positioned(
                left: 271,
                top: 99.96,
                child: Text(
                  '0',
                  style: TextStyle(
                    color: Color(0xFFE01010),
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Positioned(
                left: 18,
                top: 15.96,
                child: Text(
                  'Total Carbon Footprint (KG co2)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Positioned(
                left: 18,
                top: 57.96,
                child: Text(
                  'Total Carbon Offset (KG co2)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Positioned(
                left: 18,
                top: 92.96,
                child: SizedBox(
                  width: 207,
                  child: Text(
                    'Total Number of Recycled Product',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
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