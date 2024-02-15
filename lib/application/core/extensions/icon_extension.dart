import 'package:flutter/material.dart';

extension IconHelper on BuildContext {
  Icon personIcon({Color? color,double? size}) {
    return Icon(Icons.person_outline, color: color,size: size,);
  }
}

