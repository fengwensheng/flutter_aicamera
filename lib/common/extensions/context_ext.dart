import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  to(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }
}
