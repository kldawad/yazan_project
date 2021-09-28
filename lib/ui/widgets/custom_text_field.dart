import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool? hiddenText;
  final TextInputType? keyboardType;
  final Icon? icon;

  CustomTextField(
      {required this.title, this.hiddenText, this.keyboardType, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: TextField(
        textAlign: TextAlign.center,
        obscureText: hiddenText!,
        keyboardType: keyboardType,
        style: TextStyle(color: Colors.black),
        onChanged: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).canvasColor,
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 20),
            child: icon,
          ),
          hintText: title,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
