import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.height});

  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // topbannerCfR (12:8)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
      padding: EdgeInsets.fromLTRB(14 * fem, 48 * fem, 28 * fem, 16 * fem),
      width: double.infinity,
      height: height * fem,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: AppColors.aBox,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: AppColors.aShadow,
                      offset: Offset(0, 2),
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/search-more.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          ),
          Text(
            'explore the hadiths\nthe teachings of the islamic religion',
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Manrope',
              fontSize: 12 * ffem,
              fontWeight: FontWeight.w300,
              height: 1.215227286 * ffem / fem,
              color: const Color(0xffffffff),
            ),
          ),
        ],
      ),
    );
  }
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

class CardButton extends StatelessWidget {
  final Image icon;
  final double width, height;
  final Function()? onTap;

  const CardButton(
      {Key? key,
      required this.icon,
      required this.width,
      required this.height,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double width = this.width * ffem;
    double height = this.height * ffem;

    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
      padding: EdgeInsets.fromLTRB(16 * fem, 7 * fem, 15 * fem, 8 * fem),
      width: width,
      height: height,
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
        child: GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: height * 0.8,
            height: height * 0.8,
            child: icon,
          ),
        ),
      ),
    );
  }
}

class CardBox extends StatelessWidget {
  final double width, height;
  final String headline, subtitle;

  const CardBox(
      {super.key,
      required this.width,
      required this.height,
      required this.headline,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    double ffem = fem * 0.97;
    double width = this.width * ffem;
    double height = this.height * ffem;

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
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
                child: Container(
                    margin: EdgeInsets.fromLTRB(height / 5, 0, 0, height / 5),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      subtitle,
                      style: SafeGoogleFont(
                        'Manrope',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.215227286 * ffem / fem,
                        color: AppColors.aText,
                      ),
                    ))),
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
              child: Container(
                margin: EdgeInsets.fromLTRB(height / 5, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  headline,
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
        ],
      ),
    );
  }
}

class RoundBox extends StatelessWidget {
  final Widget child;
  final double width, height;
  final Alignment? alignment;

  const RoundBox(
      {super.key,
      required this.width,
      required this.height,
      required this.child,
      this.alignment = Alignment.center});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return SizedBox(
      width: width,
      height: height,
      child: Container(
        alignment: alignment,
        padding: EdgeInsets.all(height / 5),
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
        child: child,
      ),
    );
  }
}
