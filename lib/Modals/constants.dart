import 'package:flutter/material.dart';

const Color kBackgroundColour = Color(0XFFE8F0F9);
const Color kShadowColor = Color(0XFFC2D1D1);
final Color kIconColor = Colors.grey[600]; //Color(0XFFAAAAAA);
final Color kTextColor = Colors.grey[700];
const BoxShadow kIconBoxShadowRaised = BoxShadow(
  color: kShadowColor,
  spreadRadius: 1,
  blurRadius: 2,
  offset: Offset(6, 8),
);
const BoxShadow kIconBrightenBoxShadowRaised = BoxShadow(
  color: Colors.white,
  spreadRadius: 1,
  offset: Offset(-1, -1),
);
const BoxShadow kIconDarkBoxShadowRaised = BoxShadow(
  color: kShadowColor,
  spreadRadius: 1,
  offset: Offset(1, 1),
);
const BoxShadow kIconDarkBoxShadowPressed = BoxShadow(
  color: Colors.white,
  offset: Offset(1, 1),
  spreadRadius: 1,
);
const BoxShadow kIconBrightBoxShadowPressed = BoxShadow(
  color: kShadowColor,
  offset: Offset(-1, -1),
  spreadRadius: 1,
);
