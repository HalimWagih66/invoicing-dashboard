import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/app_styles.dart';
import 'package:invoicing_dashboard/dots_indicator.dart';
import 'package:invoicing_dashboard/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Card",style: AppStyles.styleSemiBold20(context)),
        const SizedBox(height: 20),
        MyCardsPageView(pageController: pageController),
        const SizedBox(height: 20),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
