import 'package:flutter/material.dart';
import 'package:riwayat/helpers/appcolors.dart';

class ThemeButton extends StatelessWidget {

  String label;
  Function onClick;
  Color color;
  Color highlight;
  Widget icon;
  Color borderColor;
  Color labelColor;
  double borderWidth;

  ThemeButton({ 
    this.label,
    this.labelColor = Colors.white,
    this.color = AppColors.MAIN_COLOR,
    this.highlight = AppColors.HIGHTLIGHT_DEFAULT, 
    this.icon,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    @required this.onClick });

    @override 
    Widget build(BuildContext context) {
      return Container(

        margin: EdgeInsets.only(left: 10, right: 10, bottom: 0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: this.color,
              child: InkWell(
                splashColor: this.highlight,
                highlightColor: this.highlight,
                onTap: () {
                  this.onClick();
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                                    color: this.borderColor,
                                    width: this.borderWidth)
                  ),
                  child: this.icon == null ? 
                  Text(this.label,
                      style: TextStyle(
                          fontSize: 16,
                          color: this.labelColor,
                          fontWeight: FontWeight.bold)) :
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      this.icon,
                      SizedBox(width: 10),
                      Text(this.label,
                      style: TextStyle(
                          fontSize: 16,
                          color: this.labelColor,
                          fontWeight: FontWeight.bold)),
                    ],
                  )
                ),
              ),
            )),
      );
  }
}