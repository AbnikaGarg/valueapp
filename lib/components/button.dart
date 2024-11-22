import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RoundedButton extends StatelessWidget {
  var ontap;
  String title;
  var color;
  var borderColor;
  var textcolor;
  double radius;
  double fontsize;
  FontWeight fontweigth;
  double height;
  RoundedButton(
      {super.key,
      required this.ontap,
      required this.title,
      required this.color,
      this.radius = 50,
      this.borderColor,
      this.height=45,
      this.fontweigth=FontWeight.w600,
      this.fontsize=15,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: ontap,
      //  hoverColor: Colors.transparent,
        child: Ink(
            height:height,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: borderColor==null? color: borderColor),
              color: color,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Center(
                child: Text(
              title,
              style: GoogleFonts.inter(
                  fontSize: fontsize, color: textcolor, fontWeight: fontweigth),
            ))),
      ),
    );
  }
}
