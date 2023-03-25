import 'package:flutter/material.dart';

import '../../models/menu_option.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
    required this.fontSize2,
    required this.menuOptions,
  }) : super(key: key);

  final double fontSize2;
  final List<MenuOption> menuOptions;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Expanded(
            child: DrawerHeader(
                decoration: const BoxDecoration(color: Color(0xff00A6E0)),
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color(0xffffffff),
                      radius: 25,
                      child: Text(
                        'Jefry',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Text(
                      'Jefry G Palomino',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                )),
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: menuOptions.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(menuOptions[i].name),
                leading: Icon(menuOptions[i].icon),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              );
            },
            // separatorBuilder: (context, index) => const Divider(),
          )
        ],
      ),
    );
  }
}
