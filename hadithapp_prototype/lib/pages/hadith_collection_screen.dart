import 'package:flutter/material.dart';
import 'package:myapp/models/hadith_collection.dart';
import 'package:myapp/pages/components/home_component.dart';
import 'package:myapp/pages/home_screen.dart';
import 'package:myapp/utils/database_manager.dart';

import '../models/hadith.dart';
import '../utils/utils.dart';
import 'hadith_book_screen.dart';

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 15 * fem, 0 * fem),
          width: double.infinity,
          child: Column(
            children: [
              RoundBox(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
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
              SizedBox(height: 20 * fem),
              FutureBuilder<List<HadithBook>>(
                future: DatabaseManager.instance.getHadithBooks(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<HadithBook>> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return snapshot.data!.isEmpty
                      ? Center(
                          child: Text("No Hadith Books found"),
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final hadithBook = snapshot.data![index];
                            return Wrap(
                              children: [
                                Center(
                                  child: GestureDetector(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => HadithBookScreen(
                                          hadithBook: hadithBook,
                                        ),
                                      ),
                                    ),
                                    child: CardBox(
                                        headline: hadithBook.book,
                                        subtitle: hadithBook.volume,
                                        width: double.infinity,
                                        height: 100),
                                  ),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 20 * fem);
                          },
                        );
                },
              ),
              SizedBox(height: 20 * fem)
            ],
          ),
        ),
      ),
    );
  }
}
