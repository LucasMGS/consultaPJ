import 'package:consultapj/modules/Home/home_page.dart';
import 'package:consultapj/utils/constants/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.HOME_PAGE, child: (_, args) => HomePage()),
  ];
}
