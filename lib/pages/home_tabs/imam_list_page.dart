import 'package:flutter/material.dart';
import 'package:riwayat/helpers/utils.dart';
import 'package:riwayat/models/imam.dart';
import 'package:riwayat/widgets/imam_card.dart';

// كلاس الكاتوجري الرئيسية
class ImamListPage extends StatelessWidget {
  List<Imam> imams = Utils.getMockedImam();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       // SizedBox(height: 18),
        _gridView(context),
      ],
    )));
  }

  Widget _gridView(BuildContext context) {

    return Expanded(
      child: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: imams.length,
        itemBuilder: (BuildContext ctx, int index) {
          return ImamCard(
              index: index, imam: imams[index], onCardClick: () {});
        },

      ),
    );
  }
}
