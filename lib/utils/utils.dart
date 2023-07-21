import 'dart:math';
import 'dart:ui';

class Utils {
  static Color randomColor() {
    return Color(Random().nextInt(0xffffffff));
  }

  static Duration randomTime() {
    return Duration(milliseconds: Random().nextInt(1000));
  }
}
