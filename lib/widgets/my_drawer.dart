import 'package:flutter/material.dart';
import '../global_parameters.dart';
import 'drawer_header.dart';
import 'drawer_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyDrawerHeader(),

          Expanded(
            child: ListView.separated(
              itemCount: GlobalParameters.menus.length,
              separatorBuilder: (context, index) =>
                  const Divider(color: Colors.grey, height: 1),
              itemBuilder: (context, index) {
                final item = GlobalParameters.menus[index];
                return DrawerItemWidget(
                  title: item['title'],
                  route: item['route'],
                  icon: item['icon'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
