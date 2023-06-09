import 'package:flutter/material.dart';
import 'package:rastrear_encomenda/provider/pacotes.dart';
import 'package:rastrear_encomenda/routes/app_routes.dart';
import 'package:rastrear_encomenda/views/form_1.dart';
import 'package:rastrear_encomenda/views/form_view.dart';
import 'package:rastrear_encomenda/views/home_view.dart';
import 'package:provider/provider.dart';
import 'package:rastrear_encomenda/views/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Pacotes(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rastreio de encomendas',
        initialRoute: AppRoutes.LOGIN,
        routes: {
          AppRoutes.LOGIN: (_) => LoginView(),
          AppRoutes.HOME: (ctx) => HomePage(),
          AppRoutes.FORM1: (ctx) => CadastroForm1(),
          AppRoutes.FORM: (ctx) => CadastroForm()
        },
      ),
    );
  }
}

