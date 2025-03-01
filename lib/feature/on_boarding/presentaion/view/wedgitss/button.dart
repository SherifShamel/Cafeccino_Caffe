import 'package:flutter/material.dart';

import '../../../../../core/text_style.dart';
import '../../../data/model/on_boarding_model.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.color, required this.l, required this.w, this.onpressed});
final String text;
final Color color;
final double l;
final double w;
final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(onPressed: onpressed,
        child:Text(text,style: white15w700),height: l,minWidth: w,
        shape: RoundedRectangleBorder
          (borderRadius: BorderRadius.circular(10)),
        color: color);
  }
}
