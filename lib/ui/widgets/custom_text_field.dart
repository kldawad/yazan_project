import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool? hiddenText;
  final TextInputType? keyboardType;

  CustomTextField({required this.title, this.hiddenText, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: TextField(
        obscureText: hiddenText!,
        keyboardType: keyboardType,
        style: TextStyle(color: Colors.white),
        onChanged: (value) {},
        decoration: InputDecoration(
          labelText: title,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color(0xFF74120C),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color(0xFF74120C),
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
