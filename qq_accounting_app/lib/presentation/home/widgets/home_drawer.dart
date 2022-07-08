import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'theme_switch_button.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key? key,
  }) : super(key: key);

  Widget _drawerHeader(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              // UserProfileAvatar(user: currentUser),
              ThemeSwitchButton(),
            ],
          ),
          const SizedBox(height: kDefaultHeightSize),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(currentUser.userName),
          //       Text(currentUser.emailAddress),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(context),
          // ListTile(
          //     leading: const Icon(Icons.settings),
          //     title: Text(
          //         FlutterI18n.translate(context, "home.drawer.setting.title")),
          //     onTap: () => getIt<RootRouter>().push(const SettingRoute())),
          // ListTile(
          //   leading: const Icon(Icons.info_outline),
          //   title: Text(
          //       FlutterI18n.translate(context, "home.drawer.introduction.title")),
          //   onTap: () => getIt<RootRouter>().push(const IntroductionRoute()),
          // ),
          // ElevatedButton(
          //   onPressed: () => context.read<AuthCubit>().signedOut(),
          //   child: Text(FlutterI18n.translate(context, "home.drawer.logout")),
          // )
        ],
      ),
    );
  }
}
