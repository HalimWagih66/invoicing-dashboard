import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/drawer_item.dart';
import 'package:invoicing_dashboard/models/drawer_item_model.dart';
import 'package:invoicing_dashboard/user_info.dart';
import 'DisplayDrawerItem.dart';
import 'generated/assets.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: UserInfo(email: "demo@gmail.com",name: "Lekan Okeowo")),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const DisplayDrawerItem(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox(height: 20)),
                DrawerItem(drawerItemModel: DrawerItemModel(name: "Setting system",pathName:  Assets.imagesSettings), isActive: true),
                const SizedBox(height: 16),
                DrawerItem(drawerItemModel: DrawerItemModel(name: "Logout account",pathName:  Assets.imagesLogout), isActive: false),
                const SizedBox(height: 28),
              ],
            ),
          )
        ],
      ),
    );
  }
}
