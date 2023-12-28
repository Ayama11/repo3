import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../help/const.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          ListTile(
            title: const Text('My Account'),
            leading: const Icon(
              Iconsax.profile_circle5,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {
              // Get.to( );
            },
          ),
          ListTile(
            title: const Text('Change Language'),
            leading: const Icon(
              Iconsax.language_square5,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Dark Mode'),
            leading: const Icon(
              Iconsax.moon5,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('About App'),
            leading: const Icon(
              Iconsax.info_circle5,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Log Out'),
            leading: const Icon(
              Iconsax.logout_15,
              color: kBaseColor,
              size: 30,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
