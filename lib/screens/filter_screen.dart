import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {

  static String routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtreleme'),
      ),
      body: Center(
        child: Text('Filtreleme Ekranı')
      )
    );
  }
}