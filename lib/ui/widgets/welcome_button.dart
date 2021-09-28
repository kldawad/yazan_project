import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String title;
  final Function() onpress;
  final MaterialStateProperty<Color> buttonColor;
  final Color textColor;

  WelcomeButton(
      {required this.title,
      required this.onpress,
      required this.buttonColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: buttonColor,
            fixedSize: MaterialStateProperty.all(Size(275, 60)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ))),
        onPressed: onpress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                color: textColor,
              ),
            ),
          ],
        ));
  }
}
