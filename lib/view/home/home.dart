import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valueapp/theme/apptheme.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 246, 247, 1),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Background.png"),
                    fit: BoxFit.cover)),
            padding: EdgeInsets.only(left: 16, right: 16, top: height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Dashboard",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.whiteBackgroundColor),
                    ),
                    Spacer(),
                    SvgPicture.asset("assets/svg/bell.svg"),
                    SizedBox(
                      width: 14,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          "assets/images/aa.jpg",
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Hi, Amanda!",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(237, 236, 236, 1)),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Total Rewards Points",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.whiteBackgroundColor),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "₹124.57",
                      style: GoogleFonts.inter(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.whiteBackgroundColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.toNamed(Routes.withdrawal,
                        //     arguments: {
                        //       "amount": _controller.incomeWallet
                        //           .toString()
                        //     });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(248, 187, 24, 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/svg/send.svg"),
                            Text(
                              "  Send Payment",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppTheme.blackColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                 padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 252, 247, 1),
                    borderRadius: BorderRadius.circular(22)),
                child: Column(
                  children: [
                    SvgPicture.asset("assets/svg/claim.svg"),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Claim",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.bodyTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "9000 INR",
                      style: GoogleFonts.inter(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(39, 174, 96, 1)),
                    ),
                  ],
                ),
              ),
               Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 241, 241, 1),
                    borderRadius: BorderRadius.circular(22)),
                child: Column(
                  children: [
                    SvgPicture.asset("assets/svg/redeem.svg"),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Redeem",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.bodyTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "4500 INR",
                      style: GoogleFonts.inter(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(231, 59, 59, 1)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rewards Details",
                  style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 35, 35, 35),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "View all",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.lightPrimaryColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  "assets/images/aa.jpg",
                                  fit: BoxFit.cover,
                                  height: 44,
                                  width: 44,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -8,
                                bottom: -5,
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.whiteTextColor),
                                  child: SvgPicture.asset(
                                      "assets/svg/send_down.svg"),
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rewards name",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Oct 12, 02:13 PM ",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppTheme.lightHintTextColor),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "+₹20.50",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(39, 174, 96, 1)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
