import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riwayat/models/imam.dart';


// كلاس لعرض الكارد  فقط
class ImamCard extends StatelessWidget {
  Imam imam;

  Function onCardClick;
  int index;

  ImamCard({this.imam, this.onCardClick, this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return InkWell(
        onTap: () {
          this.onCardClick();
          showDialogFun(context, imam.imgName);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(38.5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 33,
                color: Color(0xFFD3D3D3).withOpacity(.84),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: imam.name,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              //Spacer(),
              Image(
                width: size.width * .10,
                color: this.imam.color,
                image: ExactAssetImage(
                  "assets/icons/imamlogo.png",
                ),
              ),
            ],
          ),
        ));
  }
}

showDialogFun(context, image) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Transform.translate(
              offset: Offset(0, 40),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .7,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/imgs/' + image + '.jpg',
                          height: double.infinity,
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                        // محاداة
                        alignment: Alignment.bottomCenter,
                        // محاداة من اسفل في المنتصف
                        child: IconButton(
                          icon: Icon(Icons.exit_to_app),
                          iconSize: 30,
                          color: Colors.red.shade800,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ))
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
