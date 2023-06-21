import 'package:flutter_modular/flutter_modular.dart';
import '../app/modules/home/home_page.dart';

class AppModule extends Module {
  List<Bind<Object>> get binds => [
  Bind((_)=> AppBarApp())
  ];

  @override 
  List<ModularRoute> get routes => [
    ChildRoute('AppBarApp', child: ((context, args) => AppBarApp()))
  ];
}