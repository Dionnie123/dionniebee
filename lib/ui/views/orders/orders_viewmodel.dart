import 'package:dionniebee/app/app.locator.dart';
import 'package:dionniebee/services/cart_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OrdersViewModel extends ReactiveViewModel {
  final navService = locator<RouterService>();

  final _cartService = locator<CartService>();
  final _dialogService = locator<DialogService>();
  @override
  List<ListenableServiceMixin> get listenableServices => [_cartService];

  @override
  void onFutureError(error, Object? key) {
    super.onFutureError(error, key);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _dialogService.showDialog(
          title: "Error",
          barrierDismissible: true,
          description: error.toString(),
          dialogPlatform: DialogPlatform.Custom);
    });
  }

  num get cartCount => _cartService.cartCount;
}
