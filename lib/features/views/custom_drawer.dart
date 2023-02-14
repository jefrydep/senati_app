
import 'package:flutter/material.dart';

import '../../models/menu_option.dart';
import '../widgets/custom_logo.dart';

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
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff00A6E0)),
              child: Column(
                children:   [
                  CircleAvatar(
                    backgroundColor:Color(0xffffffff) ,
                    radius: 25,
                    child: Text('Jefry'),
                  ),
                  Text('Jefry G Palomino'),
                  CustomLogo(
                    fontSize2:fontSize2 ,
                    color1: Color(0xffffffff),
                    color2: Color(0xffffffff),
                    color3: Color(0xff00A6E0),
                    cicrcleColor: Color(0xffffffff),
                  ),
                ],
              )),
          ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: menuOptions.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(menuOptions[i].name),
                leading: Icon(menuOptions[i].icon),
                onTap: (){
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
