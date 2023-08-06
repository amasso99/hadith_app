import 'package:flutter/material.dart';
import 'package:myapp/models/hadith_collection.dart';
import 'package:myapp/pages/components/home_component.dart';
import 'package:myapp/pages/home_screen.dart';

import '../utils.dart';

class HadithCollectionScreen extends StatelessWidget {
  final HadithCollection hadithCollection;

  const HadithCollectionScreen({super.key, required this.hadithCollection});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: AppColors.aBackground,
      appBar: HomeScreen.appBar,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        backgroundColor: AppColors.aBox,
        child: const Icon(Icons.arrow_back_ios_new),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 15 * fem, 0 * fem),
        width: double.infinity,
        child: Column(
          children: [
            RoundBox(
              width: double.infinity,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Text(
                hadithCollection.name,
                style: SafeGoogleFont(
                  'Manrope',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w300,
                  height: 1.2152272463 * ffem / fem,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
