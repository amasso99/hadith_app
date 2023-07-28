import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myapp/models/hadith_collection.dart';
import 'package:myapp/pages/hadith_collection_screen.dart';
import 'package:myapp/utils.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const HomeAppBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    log(ffem.toString());

    return Container(
      // topbannerCfR (12:8)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
      padding: EdgeInsets.fromLTRB(14 * fem, 48 * fem, 28 * fem, 16 * fem),
      width: double.infinity,
      height: 130 * fem,
      decoration: BoxDecoration(
        color: const Color(0xff1e1e1e),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30 * fem),
          bottomLeft: Radius.circular(30 * fem),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0x7f000000),
            offset: Offset(0 * fem, 4 * fem),
            blurRadius: 2 * fem,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // logoQFh (11:3)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 32 * fem),
            width: 36 * fem,
            height: 34 * fem,
            child: Image.asset(
              'assets/images/logo.png',
              width: 36 * fem,
              height: 34 * fem,
            ),
          ),
          Container(
            // group1WZd (17:173)
            margin: EdgeInsets.fromLTRB(0 * fem, 5 * fem, 79 * fem, 0 * fem),
            width: 193 * fem,
            height: 61 * fem,
            child: Stack(
              children: [
                Positioned(
                  // explorethehadithstheteachingso (6:12)
                  left: 1 * fem,
                  top: 31 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 192 * fem,
                      height: 30 * fem,
                      child: Text(
                        'explore the hadiths\nthe teachings of the islamic religion',
                        style: SafeGoogleFont(
                          'Manrope',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.215227286 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // hadithappZpj (11:7)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 160 * fem,
                      height: 39 * fem,
                      child: Text(
                        'Hadith App',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Manrope',
                          fontSize: 32 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2152272463 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // searchmoree5V (11:6)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 33.5 * fem),
            width: 35 * fem,
            height: 32.5 * fem,
            child: Image.asset(
              'assets/images/search-more.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

Widget lastReadHadith(BuildContext context) {
  double baseWidth = 390;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    // lastreadF5H (12:18)
    padding: EdgeInsets.fromLTRB(19 * fem, 10 * fem, 15 * fem, 10 * fem),
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xff2c2c2c),
      borderRadius: BorderRadius.circular(20 * fem),
      boxShadow: [
        BoxShadow(
          color: const Color(0x3f000000),
          offset: Offset(0 * fem, 4 * fem),
          blurRadius: 2 * fem,
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // gotoyourlastreadhadith7dH (12:14)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 105 * fem, 0 * fem),
          child: Text(
            'Go to your last read Hadith',
            style: SafeGoogleFont(
              'Manrope',
              fontSize: 16 * ffem,
              fontWeight: FontWeight.w300,
              height: 1.2152272463 * ffem / fem,
              color: const Color(0xffffffff),
            ),
          ),
        ),
        SizedBox(
          // timemachineR8B (12:16)
          width: 30 * fem,
          height: 30 * fem,
          child: Image.asset(
            'assets/images/time-machine.png',
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  );
}

Widget cardBox(BuildContext context, double width, double height) {
  double baseWidth = 390;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  log(MediaQuery.of(context).size.width.toString());
  double ffem = fem * 0.97;
  width = width * ffem;
  height = height * ffem;

  return SizedBox(
      width: width,
      height: height,
      child: Stack(children: [
        SizedBox(
          width: width,
          height: height,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height / 5),
              color: AppColors.aBox,
              boxShadow: [
                BoxShadow(
                  color: AppColors.aShadow,
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: width,
          height: height / 2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height / 5),
              color: AppColors.aBox,
              boxShadow: [
                BoxShadow(
                  color: AppColors.aShadow,
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
          ),
        )
      ]));
}

Widget hadithBookBox(BuildContext context, HadithCollection hadithCollection) {
  double baseWidth = 390;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return SizedBox(
    // collection1XS7 (12:12)
    width: double.infinity,
    height: 100 * fem,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // autogroupgp1hrzB (TyetZkTwauadDhYFiyGP1H)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 0 * fem),
          width: 294 * fem,
          height: 100 * fem,
          child: Stack(
            children: [
              Positioned(
                // rectangle4mbM (6:13)
                left: 0 * fem,
                top: 1 * fem,
                child: Align(
                  child: SizedBox(
                    width: 294 * fem,
                    height: 100 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                        color: AppColors.aBox,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.aShadow,
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
                // rectangle5eQF (12:10)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 294 * fem,
                    height: 50 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                        color: AppColors.aBox,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.aShadow,
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
                // sahihalbukhariXyq (12:9)
                left: 14.5263061523 * fem,
                top: 13 * fem,
                child: Align(
                  child: SizedBox(
                    width: 146 * fem,
                    height: 25 * fem,
                    child: Text(
                      hadithCollection.getName,
                      style: SafeGoogleFont(
                        'Manrope',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2152272224 * ffem / fem,
                        color: AppColors.aText,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // hadithnarrationsin97chaptersQn (12:11)
                left: 14.5263061523 * fem,
                top: 68 * fem,
                child: Align(
                  child: SizedBox(
                    width: 205 * fem,
                    height: 15 * fem,
                    child: Text(
                      '${hadithCollection.getTotalChapters} Hadith narrations in ${hadithCollection.getTotalChapters} chapters',
                      style: SafeGoogleFont(
                        'Manrope',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.215227286 * ffem / fem,
                        color: AppColors.aText,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          // autogroupd4t7h19 (TyetkKzedBiKa8bBy5D4t7)
          margin: EdgeInsets.fromLTRB(0 * fem, 3 * fem, 0 * fem, 2 * fem),
          width: 61 * fem,
          height: 100 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // readCyV (12:34)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
                padding:
                    EdgeInsets.fromLTRB(16 * fem, 7 * fem, 15 * fem, 8 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff2c2c2c),
                  borderRadius: BorderRadius.circular(20 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Center(
                  // booksgNs (12:17)
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
                  // informationQ3y (12:35)
                  padding: EdgeInsets.fromLTRB(
                      12.2 * fem, 7 * fem, 12.2 * fem, 8 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.aBox,
                    borderRadius: BorderRadius.circular(20 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.aShadow,
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    // infoJQF (12:33)
                    child: GestureDetector(
                      onTap: () {
                        // Handle the tap event here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HadithCollectionScreen()),
                        );
                      },
                      child: SizedBox(
                        width: 36.6 * fem,
                        height: 30 * fem,
                        child: Image.asset(
                          'assets/images/info.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ],
    ),
  );
}
