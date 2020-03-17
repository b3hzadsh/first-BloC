import 'package:flutter/material.dart';

Widget myRadioBtn(int value, String gName, Function x) {
  return Radio(
    value: value,
    groupValue: gName,
    onChanged: x,
  );
}
