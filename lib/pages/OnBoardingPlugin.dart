import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:riwayat/helpers/appcolors.dart';
import 'package:riwayat/models/pagemodle.dart';
import 'file:///C:/Users/amjadsharekh/AndroidStudioProjects/riwayat/lib/pages/home_tabs/categorylistpage.dart';
import 'package:riwayat/pages/home.dart';
import 'package:riwayat/widgets/themebutton.dart';

class OnBoardingPlugin extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingPlugin> {
  List<PageModle> pages;
  ValueNotifier<int> _pageViewNotifier =
      ValueNotifier(0); // لها خاصية تتابع القمية التي انشاتها ادا اتغيرا او لا

  void _addPages() {
    pages = List<PageModle>();
    pages.add(PageModle('أَفَلَا يَتَدَبَّرُونَ الْقُرْآنَ ﴿٨٢ النساء﴾',
        "assets/icons/logo2.png", 'assets/imgs/white.png'));
    pages.add(PageModle('أُولَٰئِكَ الَّذِينَ اشْتَرَوُا الْحَيَاةَ الدُّنْيَا بِالْآخِرَةِ ﴿٨٦ البقرة﴾',
        "assets/icons/logo2.png", 'assets/imgs/white.png'));
    pages.add(PageModle('وَنُنَزِّلُ مِنَ الْقُرْآنِ مَا هُوَ شِفَاءٌ وَرَحْمَةٌ لِلْمُؤْمِنِينَ ﴿٨٢ الإسراء﴾',
        "assets/icons/logo2.png", 'assets/imgs/white.png'));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();
    return Scaffold(
        // تحتوي على اكسترا مواصفات
        body: Stack(
      children: <Widget>[
        //  الستاك بوخد تشليدرن مش تشاليد
        // كل تشلدرين على طبقى معينة
        PageView.builder( //dragStartBehavior:DragStart ,
          //scrollDirection: Axis.vertical,
          //احتواء اكثر من عنصر مع التحريك في نفس الصفحة
          itemBuilder: (context, index) {
            // دالة في البيج فيو تستدعى في كل صفحة
            return Stack(
              // لكل صفحة
              children: <Widget>[
                Container(
                  color: Colors.white,
                  /* decoration: BoxDecoration(
                      image: DecorationImage(
                   image: ExactAssetImage(pages[index].image),
                    // استدعاء حسب رقم الاندكس
                    fit: BoxFit.cover,
                  ) // لتعال مع الصورة كتزيين
                      ),*/
                ),
                _box(index),
              ],
            );
          },
          itemCount: pages.length, // عدد الصفحات
          onPageChanged: (index) {
            _pageViewNotifier.value = index;
          },
        ),
        _displayPageIndicators(pages.length),
        _getStartedButtom(),
      ],
    ));
  }

  Widget _box(int index) {
    return Container(
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 140),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: AppColors.MAIN_COLOR.withOpacity(0.5),
                blurRadius: 20,
                offset: Offset.zero)
          ]),
      child: Column(

          // فوق الكونتينر
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.translate(
              // للتحكم بمكان العنصر على الشاشة
              child: Image(
                image: ExactAssetImage(pages[index].icon),
                //     size: 150,
              ),
              offset: Offset(0, -70), // x,y اوبجيكت ياخد قيمة
            ),
            Text(pages[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.DARK_GREEN, fontSize: 25)),
          ]),
    );
  }

  Widget _displayPageIndicators(int length) {
    // دالة للاندكيتر
    return Transform.translate(
      offset: Offset(0, 175),
      child: Align(
        alignment: Alignment.center,
        child: PageViewIndicator(
          pageIndexNotifier: _pageViewNotifier,
          // لها القدرة على عملية المراقبة ادا اتغيرت القمية _pageViewNotifier
          length: length,
          normalBuilder: (animationController, index) => Circle(
            size: 8.0,
            color: AppColors.MAIN_COLOR,
          ),
          highlightedBuilder: (animationController, index) => ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 12.0,
              color: AppColors.DARK_GREEN,
            ),
          ),
        ),
      ),
    );
  }

  Widget _getStartedButtom() {
    return Transform.translate(offset: Offset(0 , -20),
      child: Align(
        // محاداة
        alignment: Alignment.bottomCenter, // محاداة من اسفل في المنتصف
        child: SizedBox(
          width: double.infinity, // لملء الزر على كامل الشاشة
          height: 60,
          child: ThemeButton(
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
              color: AppColors.DARK_GREEN,
              label: 'ابدأ التعلم'),
        ),
      ),
    );
  }
}
