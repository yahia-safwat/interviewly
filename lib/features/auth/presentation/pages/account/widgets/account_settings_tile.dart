import 'package:flutter/material.dart';

class AccountSettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final bool isVisible;

  const AccountSettingsTile({
    required this.title,
    required this.icon,
    required this.onTap,
    this.isVisible = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: Icon(icon, color: Theme.of(context).primaryColor),
              title: Text(title),
              trailing: const Icon(Icons.chevron_right),
              onTap: onTap,
            ),
          )
        : const SizedBox();
  }
}
