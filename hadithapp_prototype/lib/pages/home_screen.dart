import 'package:flutter/material.dart';
import 'package:myapp/models/hadith_collection.dart';
import 'package:myapp/utils.dart';

import 'components/home_component.dart';
import 'hadith_collection_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const CustomAppBar appBar = CustomAppBar(height: 150);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      backgroundColor: AppColors.aBackground,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 15 * fem, 0 * fem),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              lastReadHadith(context),
              SizedBox(height: 20 * fem),
              ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: HadithCollections.collections.length,
                itemBuilder: (context, index) {
                  final collection = HadithCollections.collections[index];
                  return Wrap(
                    children: [
                      HadithCollectionRow(hadithCollection: collection)
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20 * fem);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HadithCollectionRow extends StatelessWidget {
  final HadithCollection hadithCollection;

  const HadithCollectionRow({super.key, required this.hadithCollection});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CardBox(
          width: 300,
          height: 100,
          headline: hadithCollection.getName,
          subtitle:
              "${hadithCollection.getTotalHadith} Hadith narrations in ${hadithCollection.getTotalChapters} chapters",
        ),
        const Spacer(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              CardButton(
                icon: AppIcons.iBooks,
                width: 65,
                height: 45,
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HadithCollectionScreen(
                        hadithCollection: hadithCollection,
                      ),
                    ),
                  )
                },
              ),
              CardButton(
                icon: AppIcons.iInfo,
                width: 65,
                height: 45,
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HadithCollectionScreen(
                        hadithCollection: hadithCollection,
                      ),
                    ),
                  )
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
