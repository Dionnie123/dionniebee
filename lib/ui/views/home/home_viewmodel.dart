import 'package:dionniebee/app/app.locator.dart';
import 'package:dionniebee/app/models/product_dto.dart';
import 'package:dionniebee/services/cart_service.dart';
import 'package:dionniebee/services/loader_overlay/loader_service.dart';

import 'package:dionniebee/services/product_service.dart';
import 'package:dionniebee/services/fluttertoast/fluttertoast_service.dart';
import 'package:dionniebee/ui/views/cart/cart_view.dart';
import 'package:dionniebee/ui/views/product/product_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel {
  final _navService = locator<RouterService>();
  final _productService = locator<ProductService>();
  final _cartService = locator<CartService>();
  final _dialogService = locator<DialogService>();

  final loader = locator<LoaderOverlayService>();
  final toaster = locator<FlutterToastService>();
  @override
  void onFutureError(error, Object? key) {
    super.onFutureError(error, key);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _dialogService.showDialog(
          title: "Error",
          barrierDismissible: true,
          description: error.toString(),
          dialogPlatform: DialogPlatform.Custom,
          buttonTitle: "OK");
    });
  }

  num get cartCount => _cartService.cartCount;
  num get cartTotal => _cartService.cartTotal;
  List<ProductDto> get cart => _cartService.cart;
  List<ProductDto> get products => _productService.items;

  Future init() async {
    loader.show(LoaderOverlayType.show);
    /*    await runBusyFuture(
        Future.wait([
          _productService.getAll(),
          Future.delayed(const Duration(seconds: 2))
        ]),
        throwException: false); */
    await Future.delayed(Duration(seconds: 2));
    loader.hide();
  }

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_cartService, _productService];

  addToCart(ProductDto product) {
    _cartService.addToCart(product);
  }

  addCartItemQuantity(String id) {
    _cartService.addCartItemQuantity(id);
  }

  minusCartItemQuantity(String id) {
    _cartService.minusCartItemQuantity(id);
  }

  productView(String id) async {
    await _navService.navigateWithTransition(ProductView(
      id: id,
      key: UniqueKey(),
    ));
  }

  goToCartView() async {
    await _navService.navigateWithTransition(
      const CartView(),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
