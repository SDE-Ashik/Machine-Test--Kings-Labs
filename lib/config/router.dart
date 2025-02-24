import 'package:go_router/go_router.dart';
import 'package:kings_lab_assignment/features/home/views/home_view.dart';
import 'package:kings_lab_assignment/features/login/views/login_view.dart';

class AppRouter {
  static const String login = '/login';
  static const String  home = '/home';

  static GoRouter router = GoRouter(
     initialLocation: login,
    routes: [

         GoRoute(
      path: login,
      builder: (context, state) => const LoginView(),
    ),
         GoRoute(
      path: home,
      builder: (context, state) => const HomeView(),
    ),
    ]
  );
}
