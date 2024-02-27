import 'package:flutter/widgets.dart';
import 'package:widget_visibility_detector/widget_visibility_detector.dart';

extension OnVisibilityDetectorExtension on Widget {
  /// Adds an action to perform after this view appears.
  ///
  /// [action] The action to perform. If action is nil, the call has no effect.
  Widget onAppear(VoidCallback? action) =>
      WidgetVisibilityDetector(onAppear: action, child: this);

  /// Adds an action to perform after this view disappears.
  ///
  /// [action] The action to perform. If action is nil, the call has no effect.
  Widget onDisappear(VoidCallback? action) =>
      WidgetVisibilityDetector(onDisappear: action, child: this);
}
