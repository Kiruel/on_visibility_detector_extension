import 'package:flutter/material.dart';
import 'package:on_visibility_detector_extension/on_visibility_detector_extension.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 3)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Center(
                  child: const Text('Hello World!')
                      .onAppear(() => debugPrint('Text appear'))
                      .onDisappear(() => debugPrint('Text disappear')),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                )
                    .onDisappear(() => debugPrint('Loading disappear'))
                    .onAppear(() => debugPrint('Loading appear'));
              }
            },
          ),
        ),
      ),
    ).onAppear(() => debugPrint('Main app appear'));
  }
}
