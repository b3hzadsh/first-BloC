import 'package:flutter/material.dart';

class OnChangeFunc {
  StreamBuilder money(String benefit, time, Stream st, int radioButton) {
    // rado button == periode
    int periode;
    int balance;

    return StreamBuilder(
        initialData: 0,
        stream: st,
        builder: (BuildContext context, snapshot) {
          switch (radioButton) {
            case 0:
              periode = 52;
              break; //Means weekly periode
            case 1:
              periode = 12;
              break; //Means monthly periode
            case 2:
              periode = 1;
              break; //Means annualy periode

          }
          balance = calculation(double.parse(snapshot.data), int.parse(time),
              int.parse(benefit), periode);

          /*
        ضریب سال باید تعیین شه . 
      */

          return Text("Your balance is equal : $balance ");
        });
  }

  //
  StreamBuilder time(String money, benefit, Stream<int> time, int radioButton) {
    int periode;
    int balance;

    return StreamBuilder(
        initialData: 0,
        stream: time,
        builder: (BuildContext context, snapshot) {
          switch (radioButton) {
            case 0:
              periode = 52;
              break; //Means weekly periode
            case 1:
              periode = 12;
              break; //Means monthly periode
            case 2:
              periode = 1;
              break; //Means annualy periode

          }
          balance = calculation(double.parse(money), int.parse(snapshot.data),
              int.parse(benefit), periode);

          return Text("Your balance is equal : $balance ");
        });
  }

  //
  StreamBuilder beneFit(
      String money, time, Stream<int> benefit, int radioButton) {
    int periode;
    int balance;

    return StreamBuilder(
        initialData: 0,
        stream: benefit,
        builder: (BuildContext context, snapshot) {
          switch (radioButton) {
            case 0:
              periode = 52;
              break; //Means weekly periode
            case 1:
              periode = 12;
              break; //Means monthly periode
            case 2:
              periode = 1;
              break; //Means annualy periode

          }
          balance = calculation(double.parse(money), int.parse(time),
              int.parse(snapshot.data), periode);

          return Text("Your balance is equal : $balance ");
        });
  }

  int calculation(double fMoney, int year, int precent, int periode) {
    for (int i = 0; i < year * periode; i++) {
      fMoney = fMoney + fMoney * precent / 100.0;
    }
    return fMoney.round();
  }
}
