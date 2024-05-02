import 'package:flutter/material.dart';

import '../../../../../../core/routes/app_routes.dart';
import 'app_drawer_header.dart';
import 'app_drawer_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const AppDrawerHeader(),
          AppDrawerItem(
            icon: Icons.dashboard,
            title: 'Dashboard',
            onTap: () {
              // Navigate to DashboardScreen
              Navigator.pushNamed(context, AppRoutes.dashboard);
            },
          ),
          AppDrawerItem(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () {
              // Navigate to SettingsScreen
              Navigator.pushNamed(context, AppRoutes.settings);
            },
          ),
          // Add more drawer tiles for other common functionalities
        ],
      ),
    );
  }
}
