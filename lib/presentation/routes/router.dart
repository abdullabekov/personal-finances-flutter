import 'package:auto_route/auto_route_annotations.dart';
import 'package:personal_finances/presentation/accounts/accounts_overview/accounts_overview_page.dart';

import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: AccountsOverviewPage)
  ],
)
class $Router {}
