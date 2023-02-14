import 'package:flutter/material.dart';
import 'package:tudoctor_app/features/router/app_routes.dart';
import 'package:tudoctor_app/features/widgets/custom_input.dart';
import 'package:tudoctor_app/features/widgets/custom_logo.dart';

import 'custom_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize2 = 32.0;
    final menuOptions = AppRoutes.menuOptions;
    final dniText = TextEditingController();
    // final List titleList = [
    //   'Inicio',
    //   'Triaje',
    //   'Examenes',
    //   'Historial',
    //   'Doctor',
    //   'Servicios'
    // ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00A6E0),
        actions: const [
          CustomLogo(
              color1: Color(0xffffffff),
              color2: Color(0xffffffff),
              color3: Color(0xff00A6E0),
              cicrcleColor: Color(0xffffffff),
              fontSize2: fontSize2),
          SizedBox(
            width: 100,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const ListTile(
                  title: Text('Agendar cita'),
                ),
                CustomInput(
                    hintext: '75142458',
                    label: 'Dni',
                    icon: const Icon(Icons.perm_identity_rounded),
                    keyboardType: TextInputType.text,
                    textEditin: dniText),
                CustomInput(
                    hintext: 'Jefry Palomino',
                    label: 'Nombres',
                    icon: const Icon(Icons.app_registration_sharp),
                    keyboardType: TextInputType.text,
                    textEditin: dniText),
                CustomInput(
                    hintext: 'Palomino Mayta',
                    label: 'Apellido',
                    icon: const Icon(Icons.list_alt_rounded),
                    keyboardType: TextInputType.text,
                    textEditin: dniText),
                CustomInput(
                    hintext: '958241546',
                    label: 'Celular',
                    icon: Icon(Icons.phone),
                    keyboardType: TextInputType.text,
                    textEditin: dniText),
                CustomInput(
                    hintext: 'Juan alvarado',
                    label: 'Doctor',
                    icon: Icon(Icons.medical_services_rounded),
                    keyboardType: TextInputType.text,
                    textEditin: dniText),
                CustomInput(
                    hintext: '23/3/1996',
                    label: 'Fecha',
                    icon: Icon(Icons.date_range_outlined),
                    keyboardType: TextInputType.text,
                    textEditin: dniText),
                CustomInput(
                    hintext: 'Laparoscopia',
                    label: 'Servicio',
                    icon: Icon(Icons.self_improvement_rounded),
                    keyboardType: TextInputType.text,
                    textEditin: dniText),
              ],
            ),
          )
        ],
      ),
      drawer: MenuDrawer(fontSize2: fontSize2, menuOptions: menuOptions),
    );
  }
}
