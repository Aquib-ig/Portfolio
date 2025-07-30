class Insets {
  static const double maxWidth = 1280;
}

abstract class AppInsets {
  double get padding;
  double get appBarHeight;
}

class SmallInsets extends AppInsets {
  @override
  double get padding => 16;

  @override
  double get appBarHeight => 54;
}

class LargeInsets extends AppInsets {
  @override
  double get padding => 64;

  @override
  double get appBarHeight => 64;
}
