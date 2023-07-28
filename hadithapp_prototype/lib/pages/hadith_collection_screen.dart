import 'package:flutter/material.dart';

import '../utils.dart';

class HadithCollectionScreen extends StatelessWidget {
  const HadithCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(children: [
              Container(
                  // iphone142zQw (2:14)
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.aBackground,
                  ),
                  child: Container(
                      // hadithcollectionbLB (19:4)
                      padding: EdgeInsets.fromLTRB(
                          19 * fem, 15 * fem, 19 * fem, 15 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff2c2c2c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Text(
                        'Sahih al-Bukhari',
                        style: SafeGoogleFont(
                          'Manrope',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2152272463 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ))),
              SizedBox(
                height: 20 * fem,
              ),
              Container(
                // buttonsE8F (19:8)
                width: double.infinity,
                height: 45 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // readaC7 (19:16)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 61 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          60 * fem, 7 * fem, 60 * fem, 8 * fem),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff2c2c2c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        // books58s (19:18)
                        child: SizedBox(
                          width: 30 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/images/books.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // information247 (19:13)
                      padding: EdgeInsets.fromLTRB(
                          30 * fem, 7 * fem, 30 * fem, 8 * fem),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff2c2c2c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        // infotMD (19:15)
                        child: SizedBox(
                          width: 90 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/images/info.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20 * fem,
              ),
              Container(
                // hadithbook1oj5 (19:19)
                width: double.infinity,
                height: 101 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupcaumxM5 (JM2edgkSK8UcDHNkyxCAum)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 6 * fem, 0 * fem),
                      width: 294 * fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle4h3m (19:20)
                            left: 0 * fem,
                            top: 1 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 294 * fem,
                                height: 100 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    color: Color(0xff2c2c2c),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0 * fem, 4 * fem),
                                        blurRadius: 2 * fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle5kXq (19:21)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 294 * fem,
                                height: 50 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    color: Color(0xff2c2c2c),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0 * fem, 4 * fem),
                                        blurRadius: 2 * fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // thebookofrevelationfuh (19:22)
                            left: 15.4736938477 * fem,
                            top: 13 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 207 * fem,
                                height: 25 * fem,
                                child: Text(
                                  'The Book of Revelation',
                                  style: SafeGoogleFont(
                                    'Manrope',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.2152272224 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // hadith178HV (19:23)
                            left: 15.4736938477 * fem,
                            top: 68 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 54 * fem,
                                height: 15 * fem,
                                child: Text(
                                  'Hadith 1-7',
                                  style: SafeGoogleFont(
                                    'Manrope',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.215227286 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // readqSo (19:27)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          12.2 * fem, 15.56 * fem, 12.2 * fem, 17.78 * fem),
                      decoration: BoxDecoration(
                        color: Color(0xff2c2c2c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        // booksLuM (19:29)
                        child: SizedBox(
                          width: 36.6 * fem,
                          height: 66.67 * fem,
                          child: Image.asset(
                            'assets/images/books.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
