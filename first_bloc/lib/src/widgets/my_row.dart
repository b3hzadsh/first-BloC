import 'package:flutter/material.dart';

Widget myRow(String text, TextEditingController s, function(String value)) {
  return Row(
    children: <Widget>[
      Expanded(
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        flex: 2,
      ),
      Expanded(
        flex: 5,
        child: TextField(
          onChanged: function,
          decoration: InputDecoration(
            labelText: "$text را وارد کنید",
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
              borderSide: new BorderSide(),
            ),
            //fillColor: Colors.green
          ),
          controller: s,
          keyboardType: TextInputType.number,
        ),
      )
    ],
  );
}
