import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/apptheme.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderPage(
      {required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).viewPadding.top;
    return Column(children: [
      Container(height: 450,
        padding: EdgeInsets.only(top: height + 10,),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.backGround2,
          borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.elliptical(MediaQuery.of(context).size.width, 100.0)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Skip    ",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.lightPrimaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SvgPicture.asset(
              fit: BoxFit.contain,
              image,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 50,
      ),
      Text(
       title,
        style: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 35, 35, 35),
        ),
      ),
      SizedBox(
        height: 12,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Text(
          description,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.4,
            color: AppTheme.lightHintTextColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    
     
    ]);
  }
}
