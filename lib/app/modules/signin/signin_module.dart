import 'package:project_gobarber/app/modules/signin/signin_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_gobarber/app/modules/signin/signin_page.dart';

class SigninModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SigninController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SigninPage()),
      ];

  static Inject get to => Inject<SigninModule>.of();
}
