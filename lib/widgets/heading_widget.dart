import 'package:decorify/utils/constants.dart';
import 'package:flutter/material.dart';

Widget headingWidget(heading) {
  return Positioned(
    top: 20,
    left: 20,
    child: Text(
      heading.toString(),
      style: heading_text_style,
    ),
  );
}
