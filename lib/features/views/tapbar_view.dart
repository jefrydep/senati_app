import 'package:flutter/material.dart';

class TabbarMenu extends StatelessWidget {
  const TabbarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Column(
              children: const [Tab(icon: Icon(Icons.home)), Text('Home')],
            ),
            Column(
              children: const [
                Tab(icon: Icon(Icons.people_outline)),
                Text('Alumnos')
              ],
            ),
            Column(
              children: const [Tab(icon: Icon(Icons.book)), Text('Materias')],
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: const [
                Center(
                  child: Text(
                    'Nuevos Alumnos',
                    style: TextStyle(fontSize: 28, color: Colors.deepOrange),
                  ),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
                ListTile(
                  title: Text('Godofredo palomino mayta'),
                  subtitle: Text('Reprobado'),
                ),
              ],
            ),
            const Icon(Icons.directions_transit),
            const Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
