import 'package:flutter/material.dart';

const double _tinySize = 4.0;
const double _smallSize = 8.0;
const double _regularSize = 12.0;
const double _mediumSize = 24.0;
const double _largeSize = 48.0;

const double widgetSpacing = 8.0;

const Widget hSpaceTiny = SizedBox(width: _tinySize);
const Widget hSpaceSmall = SizedBox(width: _smallSize);
const Widget hSpaceRegular = SizedBox(width: _regularSize);
const Widget hSpaceMedium = SizedBox(width: _mediumSize);
const Widget hSpaceLarge = SizedBox(width: _largeSize);

const Widget vSpaceTiny = SizedBox(height: _tinySize);
const Widget vSpaceSmall = SizedBox(height: _smallSize);
const Widget vSpaceRegular = SizedBox(height: _regularSize);
const Widget vSpaceMedium = SizedBox(height: _mediumSize);
const Widget vSpaceLarge = SizedBox(height: _largeSize);

EdgeInsets fluidPadding({
  required BoxConstraints size,
  double targetWidth = 800,
  double hPadding = 0.0,
  double vPadding = 0.0,
}) {
  final width = (size.maxWidth - targetWidth) / 2;
  return EdgeInsets.symmetric(
      vertical: vPadding,
      horizontal: ((size.maxWidth > 500)) ? width : hPadding);
}
