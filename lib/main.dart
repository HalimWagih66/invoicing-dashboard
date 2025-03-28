import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'DashBoradView.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const InvoicingDashboard(),
    ),
  );
}

class InvoicingDashboard extends StatelessWidget {
  const InvoicingDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const DashBoradView(),
    );
  }
}
