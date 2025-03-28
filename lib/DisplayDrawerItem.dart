import 'package:flutter/material.dart';

import 'drawer_item.dart';
import 'generated/assets.dart';
import 'models/drawer_item_model.dart';

class DisplayDrawerItem extends StatefulWidget {
  const DisplayDrawerItem({super.key});

  @override
  State<DisplayDrawerItem> createState() => _DisplayDrawerItemState();
}

class _DisplayDrawerItemState extends State<DisplayDrawerItem> {
  static List<DrawerItemModel> items = [
    DrawerItemModel(name: "Dashboard", pathName: Assets.imagesDashboard),
    DrawerItemModel(name: "My Transaction", pathName: Assets.imagesMyTransctions),
    DrawerItemModel(name: "Statistics", pathName: Assets.imagesStatistics),
    DrawerItemModel(name: "Wallet Account", pathName: Assets.imagesWalletAccount),
    DrawerItemModel(name: "My Investments", pathName: Assets.imagesMyInvestments),
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedItem = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: DrawerItem(drawerItemModel: items[index],isActive: index == selectedItem,),
        ),
      );
    },itemCount: items.length);
  }
}
