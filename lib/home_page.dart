import 'package:flutter/material.dart';

import 'core/adaptive_layout.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) =>  Text("data"),
        desktopLayout: (context) =>  Text("data"),
        tabletLayout: (context) =>  Text("data"),
      ),
    );
  }
}
