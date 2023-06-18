import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Foods extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
          backgroundColor: Colors.green[100],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Text("Yiyecekler"),
            ],
          )
      ),

    );
  }
}