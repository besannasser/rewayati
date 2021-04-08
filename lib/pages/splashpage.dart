import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riwayat/helpers/appcolors.dart';
import 'package:riwayat/helpers/iconhelper.dart';
import 'package:riwayat/widgets/iconfont.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({this.goToPage, this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });

    return Scaffold(
        body: Container(
      color: AppColors.DARK_GREEN,
      alignment: Alignment.center,
      child: Image(
          color: Colors.white,
          image: ExactAssetImage(
            "assets/icons/logo2.png",
          )),
    ));
  }
}
