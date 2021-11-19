import 'package:consultapj/modules/Home/home_module.dart';
import 'package:consultapj/modules/Home/home_page.dart';
import 'package:consultapj/modules/Login/login_page.dart';
import 'package:consultapj/modules/Signup/signup_page.dart';
import 'package:consultapj/utils/constants/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Routes.SIGNUP_PAGE, child: (_, args) => SignupPage()),
    ChildRoute(Routes.LOGIN_PAGE, child: (_, args) => LoginPage()),
    // ChildRoute(Routes.HOME_PAGE, child: (_, args) => HomePage()),
    ModuleRoute(Routes.HOME_PAGE, module: HomeModule()),
  ];
}
