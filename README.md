# on_visibility_detector_extension

An list on extension to detect when widget appear or disappear, based on (SwiftUI modifier)[https://developer.apple.com/documentation/swiftui/view/onappear(perform:)]

## Getting Started

```dart
import 'package:on_visibility_detector_extension/on_visibility_detector_extension.dart';

const Text('Hello World!')
        .onAppear(() => debugPrint('Text appear'))
        .onDisappear(() => debugPrint('Text disappear')),
```
