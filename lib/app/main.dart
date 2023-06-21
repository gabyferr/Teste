import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../config/app_widget.dart';
import '../config/app_module.dart';



void main() {
 return runApp(ModularApp(module: AppModule(),child: AppWidget(),));
}
