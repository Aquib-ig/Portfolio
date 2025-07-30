import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  TextStyle get titleLarge;
  TextStyle get titleMedium;
  TextStyle get titleRegular;
  TextStyle get bodyLarge;
  TextStyle get bodyMedium;
  TextStyle get bodyRegular;
}

class SmallTextStyles extends AppTextStyle {
  @override
  TextStyle get titleLarge =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleMedium =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleRegular =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  @override
  TextStyle get bodyLarge =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyMedium =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyRegular =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
}

class LargeTextStyles extends AppTextStyle {
  @override
  TextStyle get titleLarge =>
      const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleMedium =>
      const TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleRegular =>
      const TextStyle(fontSize: 32, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyLarge =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyMedium =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyRegular =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}
