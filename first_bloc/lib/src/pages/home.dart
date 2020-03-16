import 'package:first_bloc/src/pages/home_body.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("محاسبه سود مرکب "),
      ),
      body: HomeBody(),
    );
  }
}
