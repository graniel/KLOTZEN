import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:klotzen/src/constants/hive_strings.dart';
import 'package:klotzen/src/providers/settings_provider.dart';
import 'package:klotzen/src/styles/theme.dart';
import 'package:klotzen/src/utils/bounce_scroll.dart';
import 'package:klotzen/src/router/router.gr.dart';
import 'router/router.gr.dart';
import 'styles/colors.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // black android navbar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.pageColor,
      statusBarColor: Colors.transparent,
    ));
    // make it a full screen app
    // but show Android navbar
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    final _appRouter = AppRouter();
    return ValueListenableBuilder(
      // listen
      valueListenable: Hive.box(HiveBoxes.settings).listenable(),
      builder: (context, box, widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: appTheme,
          builder: (BuildContext context, Widget widget) {
            // load settings
            final settingsProvider =
                Provider.of<SettingsProvider>(context, listen: false);
            settingsProvider.loadSettings();
            print("build app");

            return ScrollConfiguration(
              behavior: BounceScrollBehavior(),
              child: MaterialApp.router(
                routerDelegate:
                    _appRouter.delegate(initialRoutes: [HomeRoute()]),
                routeInformationParser: _appRouter.defaultRouteParser(),
              ),
            );
            // return  ExtendedNavigator<Router>(router: Router());
          },
        );
      },
    );
  }
}
