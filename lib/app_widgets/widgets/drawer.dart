import 'package:chop_shop/main.dart';
import 'package:chop_shop/ui/colors.dart';
import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: mainForegroundColor,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.wmj.ru/imgs/2020/10/23/18/4300765/75ca401ba4ef59c4222c54c26ac7cc22d032b145.jpg'),
            )),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0, left: 16.0),
                child: Text(
                  'Максим',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              color: mainBackgroundColor,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Главная', style: TextStyle(fontSize: 25)),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              color: mainBackgroundColor,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Настройки', style: TextStyle(fontSize: 25)),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreen()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
