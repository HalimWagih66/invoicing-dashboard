import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.desktopLayout, required this.tabletLayout, required this.mobileLayout});
  final WidgetBuilder desktopLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder mobileLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(MediaQuery.of(context).size.width > 900){
          return desktopLayout(context);
        }else if(MediaQuery.of(context).size.width > 600){
          return tabletLayout(context);
        }else {
          return mobileLayout(context);
        }
      },
    );
  }
}
