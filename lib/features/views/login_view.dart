import 'package:flutter/material.dart';
import 'package:tudoctor_app/features/widgets/custom_input.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_logo.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffEFF9FC),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Mis Notas',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              _Form(),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({
    Key? key,
  }) : super(key: key);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailText = TextEditingController();
  final passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var fontSize2 = 32.0;
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(11),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.07),
                offset: const Offset(0.2, 5),
                blurRadius: 4)
          ]),
      // decoration: const BoxDecoration(color: Colors.red),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomLogo(
              color1: Color(0xff000000),
              color2: Color(0xff00A6E0),
              color3: Color(0xffffffff),
              cicrcleColor: Color(0xff00A6E0),
              fontSize2: fontSize2),
          const SizedBox(
            height: 40,
          ),
          CustomInput(
            hintext: 'Jefrydep@gmail.com',
            label: 'DNI',
            icon: const Icon(Icons.email),
            keyboardType: TextInputType.emailAddress,
            textEditin: emailText,
          ),
          CustomInput(
            hintext: '***********',
            label: 'contraseña',
            icon: const Icon(Icons.lock),
            keyboardType: TextInputType.visiblePassword,
            textEditin: passwordText,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomButton(
            colorButton: Color(0xff9381E5),
            title: 'Ingresar',
            routeName: 'home',
          ),
          const SizedBox(
            height: 20,
          ),
          Text('Created by'),
          Text(
            'Godofredo Palomino Mayta',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.amber, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
