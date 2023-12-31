import 'package:dionniebee/app/helpers/lifecycle_manager/lifecycle_manager.dart';
import 'package:dionniebee/ui/common/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dionniebee/app/app.bottomsheets.dart';
import 'package:dionniebee/app/app.dialogs.dart';
import 'package:dionniebee/app/app.locator.dart';
import 'package:dionniebee/app/app.router.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 1366, tablet: 768, watch: 200),
  );
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  setupBottomSheetUi();
  // setPathUrlStrategy();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final authService = locator<AuthService>();

    return LifeCycleManager(
      child: MaterialApp.router(
        scrollBehavior: AppScrollBehavior(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
            fontFamily: GoogleFonts.varelaRound().fontFamily,
            useMaterial3: false,
            appBarTheme: AppBarTheme(
                backgroundColor: kcPrimaryColor,
                foregroundColor: Colors.white,
                titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.varelaRound().fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            brightness: Brightness.light,
            textTheme:
                GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
            colorSchemeSeed: kcPrimaryColor),
        darkTheme: ThemeData(
          fontFamily: GoogleFonts.varelaRound().fontFamily,
          useMaterial3: true,
          brightness: Brightness.dark,
        ).copyWith(
            // colorScheme: darkColorScheme,
            ),
        routerDelegate: stackedRouter.delegate(),
        routeInformationParser:
            stackedRouter.defaultRouteParser(includePrefixMatches: true),
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
