import 'package:flutter/material.dart';

getColor(BuildContext context, double percent) {
  if (percent >= 0.50) {
    return Colors.green;
  } else if (percent >= 0.25) {
    return Colors.orange;
  } else {
    return Colors.red;
  }
}
