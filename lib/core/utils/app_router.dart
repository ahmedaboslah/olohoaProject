import 'package:go_router/go_router.dart';
import 'package:olohaproject/features/AppView/presentation/app_view.dart';
import 'package:olohaproject/features/SigninPage/presentation/sign_in_page.dart';


abstract class AppRouter{
  static final router=GoRouter(routes: [
    GoRoute(path: '/',builder: (context, state) => const AppView(), ),
    GoRoute(path: '/sign_in_page',builder: (context, state) => const SignInPage(), ),
  ]);
}