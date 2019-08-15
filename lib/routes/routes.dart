import 'package:fluro/fluro.dart';

import 'route_handler.dart';

class Routes {
  static String root = '/';
  static String home = '/widgets/home/home_page';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      // ignore: missing_return
      handlerFunc: (context, params) {// BuildContext, Map<String, List<String>>
        print("Route was not found!!!!");
      }
    );

    router.define(root, handler: splashHandler);
    router.define(home, handler: homeHandler);
  }
}