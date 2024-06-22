import 'package:broadwayinfosys_weatherapp/constant/color_constants.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.blueTextColor,
            ),
            child: ListTile(
              title: Row(
                children: [
                  const Icon(Icons.place_outlined),
                  Text(
                    'WeatherApp',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  const Icon(Icons.location_city_rounded),
                  Text(
                    'Kathmandu Valley Weather\nReports',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(
              'Home',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.place),
            title: Text(
              'Location',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              'Settings',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.app_blocking_outlined),
            title: Text(
              'App Version',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.share_rounded),
            title: Text(
              'ShareApp',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
