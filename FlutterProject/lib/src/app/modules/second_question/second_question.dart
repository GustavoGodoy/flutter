import 'package:flutter/material.dart';
import 'package:sis/src/app/components/standard_button.dart';
import 'package:sis/src/app/components/standard_page.dart';
import 'package:sis/src/utils/export.dart';

// ignore: use_key_in_widget_constructors
class SecondQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Text(
                questionOnSecondPage,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.red),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(responseTwo),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
        pageTile: secondQuest);
  }
}
