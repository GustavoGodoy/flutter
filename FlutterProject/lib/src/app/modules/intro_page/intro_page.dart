import 'package:flutter/material.dart';
import 'package:sis/src/app/components/standard_button.dart';
import 'package:sis/src/app/components/standard_textform.dart';
import 'package:sis/src/app/modules/first_question/first_question.dart';
import 'package:sis/src/utils/export.dart';

// ignore: use_key_in_widget_constructors
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => FirstQuestion()),
                      ),
                    );
                  },
                  child: Image.asset('assets/images/palmeiras.png')),
              const SizedBox(
                height: 15,
              ),
              StandardTextForm(
                label: socio,
              ),
              const SizedBox(
                height: 15.0,
              ),
              StandardTextForm(
                label: password,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                info,
                style: TextStyle(fontSize: 25, color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}
