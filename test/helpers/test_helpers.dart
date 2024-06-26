import 'package:dionniebee/services/local_storage_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dionniebee/app/app.locator.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:dionniebee/services/product_service.dart';
import 'package:dionniebee/services/cart_service.dart';
import 'package:dionniebee/services/order_service.dart';
import 'package:dionniebee/services/foo_service.dart';
import 'package:dionniebee/services/user_service.dart';
import 'package:dionniebee/services/fluttertoast/fluttertoast_service.dart';
import 'package:dionniebee/services/loader_overlay/loader_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<RouterService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<FirebaseAuthenticationService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ProductService>(onMissingStub: OnMissingStub.returnDefault),

  MockSpec<CartService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<OrderService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<FooService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<LocalStorageService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<UserService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<FlutterToastService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<LoaderOverlayService>(onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterLocalStorageService();
  getAndRegisterNavigationService();
  getAndRegisterRouterService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterFirebaseAuthenticationService();
  getAndRegisterProductService();

  getAndRegisterCartService();
  getAndRegisterOrderService();
  getAndRegisterFooService();
  getAndRegisterUserService(hasLoggedInUser: false);
  getAndRegisterFlutterToastService();
  getAndRegisterLoaderService();
// @stacked-mock-register
}

MockLocalStorageService getAndRegisterLocalStorageService() {
  _removeRegistrationIfExists<LocalStorageService>();
  final service = MockLocalStorageService();
  locator.registerSingleton<LocalStorageService>(service);
  return service;
}

MockRouterService getAndRegisterRouterService() {
  _removeRegistrationIfExists<RouterService>();
  final service = MockRouterService();
  locator.registerSingleton<RouterService>(service);
  return service;
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockProductService getAndRegisterProductService() {
  _removeRegistrationIfExists<ProductService>();
  final service = MockProductService();

  locator.registerSingleton<ProductService>(service);
  return service;
}

MockFirebaseAuthenticationService
    getAndRegisterFirebaseAuthenticationService() {
  _removeRegistrationIfExists<FirebaseAuthenticationService>();
  final service = MockFirebaseAuthenticationService();

  locator.registerSingleton<FirebaseAuthenticationService>(service);
  return service;
}

MockCartService getAndRegisterCartService() {
  _removeRegistrationIfExists<CartService>();
  final service = MockCartService();
  locator.registerSingleton<CartService>(service);
  return service;
}

MockOrderService getAndRegisterOrderService() {
  _removeRegistrationIfExists<OrderService>();
  final service = MockOrderService();
  locator.registerSingleton<OrderService>(service);
  return service;
}

MockFooService getAndRegisterFooService() {
  _removeRegistrationIfExists<FooService>();
  final service = MockFooService();
  locator.registerSingleton<FooService>(service);
  return service;
}

MockUserService getAndRegisterUserService({
  bool hasLoggedInUser = false,
}) {
  _removeRegistrationIfExists<UserService>();
  final service = MockUserService();
  when(service.hasLoggedInUser).thenReturn(hasLoggedInUser);
  locator.registerSingleton<UserService>(service);
  return service;
}

MockFlutterToastService getAndRegisterFlutterToastService() {
  _removeRegistrationIfExists<FlutterToastService>();
  final service = MockFlutterToastService();
  locator.registerSingleton<FlutterToastService>(service);
  return service;
}

MockLoaderOverlayService getAndRegisterLoaderService() {
  _removeRegistrationIfExists<LoaderOverlayService>();
  final service = MockLoaderOverlayService();
  locator.registerSingleton<LoaderOverlayService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
