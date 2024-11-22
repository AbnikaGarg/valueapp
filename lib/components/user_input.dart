import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/apptheme.dart';

class MyTextField extends StatelessWidget {
  String hintText;
  var color;
  var fillcolor;
  var icon;
  var preicon;
  bool readOnly;
  var validation;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  var ontap;
  var ontapSuffix;
  final bool obsecureText;
  final bool isSuffixIcon;
  final TextEditingController? textEditingController;
  MyTextField(
      {super.key,
      required this.hintText,
      required this.color,
      this.icon,
      this.fillcolor = Colors.white,
      this.ontapSuffix,
      this.obsecureText = false,
      this.isSuffixIcon = false,
      this.readOnly = false,
      this.preicon,
      this.ontap,
      this.textInputType,
      this.inputFormatters,
      this.textEditingController,
      this.validation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4, bottom: 8),
      child: TextFormField(
          keyboardType: textInputType,
          onTap: ontap,
          readOnly: readOnly,
          inputFormatters: inputFormatters,
          controller: textEditingController,
          obscureText: obsecureText,
          validator: validation,
          cursorColor: AppTheme.lightPrimaryColor,
          ///cursorHeight: 20,
          //  textAlignVertical: TextAlignVertical.center,

          decoration: InputDecoration(
              labelStyle: Theme.of(context).textTheme.displaySmall,
              counterText: '',
              errorStyle: GoogleFonts.inter(fontSize: 12,color: Color.fromARGB(255, 255, 22, 5)),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromRGBO(225, 30, 61, 1),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              hintStyle: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:  AppTheme.backGround2,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              isDense: true,
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide(
                  color:  AppTheme.backGround2,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color:  AppTheme.backGround2,
                    width: 1,
                  )),
              filled: true,
             fillColor: AppTheme.backGround2,
              contentPadding: EdgeInsets.all(12),
              hintText: hintText,
              floatingLabelStyle:
                  const TextStyle(color: Color.fromRGBO(245, 73, 53, 1)),
              suffixIcon: isSuffixIcon
                  ? GestureDetector(
                      child: !obsecureText
                          ? Icon(
                              Icons.visibility_off,
                              size: 16,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.visibility,
                              size: 16,
                              color: Colors.grey,
                            ),
                      onTap: ontapSuffix,
                    )
                  : icon)),
    );
  }
}
