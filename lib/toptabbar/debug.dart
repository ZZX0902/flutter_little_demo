import 'package:flutter/rendering.dart';  // debug UI 用的库
import 'package:flutter/material.dart';

import 'main_toptab.dart';

void main() {
  /// 学习完整的debug方法
  /// https://flutter.dev/docs/testing/code-debugging
  debugPaintSizeEnabled=true;  // debug UI 用的库
  runApp(toptabbar());
}
