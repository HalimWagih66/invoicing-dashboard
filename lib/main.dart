import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const InvoicingDashboard());
}

class InvoicingDashboard extends StatelessWidget {
  const InvoicingDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}



