import 'package:flutter/material.dart';
import 'package:sis/src/app/components/standard_button.dart';
import 'package:sis/src/app/components/standard_page.dart';
import 'package:sis/src/utils/export.dart';

import '../second_question/second_question.dart';

// ignore: use_key_in_widget_constructors
class FirstQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                questionOnFirstPage,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.red),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(responseOne),
              const SizedBox(
                height: 200,
              ),
              StandardButton(
                buttonText: nextQuest,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondQuestion()));
                },
              ),
            ],
          ),
        ),
        pageTile: firstQuest);
  }
}
