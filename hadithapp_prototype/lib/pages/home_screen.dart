import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myapp/models/hadith_collection.dart';
import 'package:myapp/utils.dart';

import 'components/home_component.dart';
import 'hadith_collection_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SizedBox(
      width: double.infinity,
      child: Container(
        // iphone142zQw (2:14)
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.aBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HomeAppBar(height: 130),
            Container(
              // frame2ZCT (14:81)
              margin: EdgeInsets.fromLTRB(14 * fem, 0 * fem, 15 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  lastReadHadith(context),
                  SizedBox(height: 20 * fem),
                  Container(
                      child: Row(
                    children: [
                      cardBox(context, 300, 100),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          cardButton(
                              context,
                              AppIcons.iInfo,
                              50,
                              50,
                              () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HadithCollectionScreen()),
                                    )
                                  }),
                          cardButton(
                              context,
                              AppIcons.iInfo,
                              30,
                              30,
                              () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HadithCollectionScreen()),
                                    )
                                  })
                        ],
                      )
                    ],
                  )),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: HadithCollections.collections.length,
                    itemBuilder: (context, index) {
                      final collection = HadithCollections.collections[index];
                      log(collection.name);
                      return Wrap(
                        children: [hadithBookBox(context, collection)],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 20 * fem);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
