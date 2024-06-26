// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_firebase_auth/src/firebase_authentication_service.dart';
import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/router_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../services/cart_service.dart';
import '../services/fluttertoast/fluttertoast_service.dart';
import '../services/foo_service.dart';
import '../services/loader_overlay/loader_service.dart';
import '../services/local_storage_service.dart';
import '../services/order_service.dart';
import '../services/product_service.dart';
import '../services/sharedpreferences_local_storage_service.dart';
import '../services/user_service.dart';
import '../ui/views/cart/cart_viewmodel.dart';
import '../ui/views/dashboard/dashboard_viewmodel.dart';
import '../ui/views/home/home_viewmodel.dart';
import '../ui/views/orders/orders_viewmodel.dart';
import '../ui/views/promo/promo_viewmodel.dart';
import '../ui/views/startup/startup_viewmodel.dart';
import '../ui/views/stores/stores_viewmodel.dart';
import 'app.router.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
  StackedRouterWeb? stackedRouter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => LoaderOverlayService());
  locator.registerLazySingleton(() => FlutterToastService());
  locator.registerLazySingleton(() => RouterService());
  locator.registerLazySingleton(() => BottomSheetService());
  final sharedPreferencesLocalStorageService =
      SharedPreferencesLocalStorageService();
  await sharedPreferencesLocalStorageService.init();
  locator.registerSingleton<LocalStorageService>(
      sharedPreferencesLocalStorageService);

  locator.registerLazySingleton(() => FooService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => FirebaseAuthenticationService());
  locator.registerLazySingleton(() => ProductService());
  locator.registerLazySingleton(() => CartService());
  locator.registerLazySingleton(() => OrderService());
  locator.registerSingleton(StartupViewModel());
  locator.registerSingleton(DashboardViewModel());
  locator.registerSingleton(HomeViewModel());
  locator.registerSingleton(PromoViewModel());
  locator.registerSingleton(OrdersViewModel());
  locator.registerSingleton(StoresViewModel());
  locator.registerSingleton(CartViewModel());
  if (stackedRouter == null) {
    throw Exception(
        'Stacked is building to use the Router (Navigator 2.0) navigation but no stackedRouter is supplied. Pass the stackedRouter to the setupLocator function in main.dart');
  }

  locator<RouterService>().setRouter(stackedRouter);
}
