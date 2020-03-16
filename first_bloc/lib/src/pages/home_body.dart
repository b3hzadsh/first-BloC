import 'package:first_bloc/src/widgets/my_row.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  //String _result = "فعلا هیچی";
  final TextEditingController _firstMoneyField = new TextEditingController();
  final TextEditingController _soodField = new TextEditingController();
  final TextEditingController _timeField = new TextEditingController();
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
              ;
            }),
            myRow("سود ماهانه", _soodField, (_) {
              ;
            }),
            myRow(" مدت سپرده (سال) ", _timeField, (_) {
              ;
            }),
            Container(
              margin: EdgeInsets.only(bottom: 15.0),
            ),
            // Center(child: Text("مبلغ حاصل برابر:  " + "$_result")),
            //TODO add 3 radioButton for weekly,monthly and annual
          ],
        ),
      ),
    );
  }
}
