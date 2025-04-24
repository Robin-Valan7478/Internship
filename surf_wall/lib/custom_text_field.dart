import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText; 
  final bool isPassword;

  CustomTextField({required this.textEditingController, required this.hintText, required this.isPassword});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController, 
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xff011F4B), fontSize: 12),
        filled: true,
        fillColor: Color(0xffCFE8FC),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
      ),
      style: GoogleFonts.oxygen(
      textStyle: TextStyle(color: Color(0xff011F4B)),
     ),
    );
  }
}
