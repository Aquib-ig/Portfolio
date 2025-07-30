import 'package:flutter/material.dart';
import 'package:portfolio/app_text_style.dart';
import 'package:portfolio/theme/app_insets.dart';

enum ResponsiveLayout { mobile, tablet, desktop }

extension ResponsiveExtension on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get width => mq.size.width;
  double get height => mq.size.height;

  ResponsiveLayout get formFactor {
    if (width < 600) {
      return ResponsiveLayout.mobile;
    } else if (width < 900) {
      return ResponsiveLayout.tablet;
    } else {
      return ResponsiveLayout.desktop;
    }
  }

  bool get isMobile => formFactor == ResponsiveLayout.mobile;
  bool get isTablet => formFactor == ResponsiveLayout.tablet;
  bool get isDesktop => formFactor == ResponsiveLayout.desktop;

  ThemeData get theme => Theme.of(this);
  
  AppTextStyle get textStyle {
    switch (formFactor) {
      case ResponsiveLayout.mobile:
        return SmallTextStyles();
      case ResponsiveLayout.tablet:
      case ResponsiveLayout.desktop:
        return LargeTextStyles();
    }
  }

  AppInsets get insets {
    switch (formFactor) {
      case ResponsiveLayout.mobile:
        return SmallInsets();
      case ResponsiveLayout.tablet:
      case ResponsiveLayout.desktop:
        return LargeInsets();
    }
  }
}
