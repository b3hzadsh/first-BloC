import 'dart:js';

import 'package:first_bloc/src/mixin/my_row_onchange.dart';
import 'package:first_bloc/src/widgets/my_radio_btn.dart';
import 'package:first_bloc/src/widgets/my_row.dart';
import 'package:flutter/material.dart';
import '../bloc/bloc.dart';

final TextEditingController _firstMoneyField = new TextEditingController();
final TextEditingController _soodField = new TextEditingController();
final TextEditingController _timeField = new TextEditingController();
int radioBtn = 0;

class HomeBody extends StatelessWidget {
  //String _result = "فعلا هیچی";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(18.0),
        color: Colors.white70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            myRow("سرمایه اولیه", _firstMoneyField, (_) {
              bloc.changeMoney(_);
              x = money(_soodField.text, _timeField.text, bloc.money, radioBtn);
            }),
            myRow("سود ماهانه", _soodField, (_) {
              bloc.changeBenefit(_);
              x = beneFit(_firstMoneyField.text, _timeField.text, bloc.benefit,
                  radioBtn);
            }),
            myRow(" مدت سپرده (سال) ", _timeField, (_) {
              bloc.changeTime(_);
              x = time(
                  _firstMoneyField.text, _soodField.text, bloc.time, radioBtn);
            }),
            Container(
              margin: EdgeInsets.only(bottom: 15.0),
            ),

            x,
            Row(
              children: <Widget>[
                myRadioBtn(0, "radios", (value) {
                  radioBtn = value;
                }),
                Text("هفتگی"),
                myRadioBtn(1, "radios", (value) {
                  radioBtn = value;
                }),
                Text("ماهانه"),
                myRadioBtn(2, "radios", (value) {
                  radioBtn = value;
                }),
                Text("سالانه"),
              ],
            )
            // Center(child: Text("مبلغ حاصل برابر:  " + "$_result")),
            //TODO add 3 radioButton for weekly,monthly and annual
          ],
        ),
      ),
    );
  }

  StreamBuilder x = StreamBuilder(
    builder: (context, snapshot) {
      return Text("nothing yet");
    },
    stream: bloc.benefit,
  );
}
