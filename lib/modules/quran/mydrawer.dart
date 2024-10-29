import 'package:flutter/material.dart';
import 'package:minhaj/modules/quran/settings.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.only(bottom: 22),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/Logo.png',
                    height: 105,
                  ),
                  const Text(
                    'منهاج',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'الإعدادات',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: const Icon(
                Icons.settings,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
