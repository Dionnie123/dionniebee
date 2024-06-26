import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dionniebee/app/models/product_dto.dart';
import 'package:stacked/stacked.dart';
import 'package:faker/faker.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class CartService with ListenableServiceMixin {
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('orders');
  var faker = Faker();

  CartService() {
    listenToReactiveValues([
      _cart,
    ]);
  }

  final ReactiveValue<List<ProductDto>> _cart =
      ReactiveValue<List<ProductDto>>([]);
  List<ProductDto> get cart => _cart.value;

  num get cartTotal {
    num temp = 0.0;
    for (var element in _cart.value) {
      if (element.isSelected) {
        temp += ((element.price ?? 0) * (element.quantityInCart ?? 0));
      }
    }
    return temp;
  }

  num get cartCount {
    num temp = 0;
    for (var element in _cart.value) {
      temp += element.quantityInCart ?? 0;
    }
    return temp;
  }

  Future<void> addOrder() async {
    await collectionReference.add({
      'items': ['A', 'B', 'C']
    });
  }

  addToCart(ProductDto product) {
    final index = _cart.value.indexWhere((element) => element.id == product.id);
    if (index == -1) {
      _cart.value.add(product.copyWith(quantityInCart: 1));
      notifyListeners();
    } else {
      final temp = _cart.value[index].copyWith(
          quantityInCart: (_cart.value[index].quantityInCart ?? 0) + 1);

      _cart.value[index] = temp;
      notifyListeners();
    }
  }

  deleteFromCart(String id) {
    _cart.value.removeWhere((element) => element.id == id);

    notifyListeners();
  }

  toggleSelectCartItem(String id) {
    final index = _cart.value.indexWhere((element) => element.id == id);
    if (index != -1) {
      var temp = _cart.value[index];
      _cart.value[index] =
          temp.copyWith(isSelected: !(_cart.value[index].isSelected));
      notifyListeners();
    }
  }

  addCartItemQuantity(String id) {
    final index = _cart.value.indexWhere((element) => element.id == id);

    if (index != -1) {
      var temp = _cart.value[index];
      _cart.value[index] =
          temp.copyWith(quantityInCart: (temp.quantityInCart ?? 0) + 1);
      notifyListeners();
    }
  }

  minusCartItemQuantity(String id) {
    final index = _cart.value.indexWhere((element) => element.id == id);
    if (index != -1) {
      var temp = _cart.value[index];
      _cart.value[index] = temp.copyWith(
          quantityInCart: (temp.quantityInCart ?? 0) -
              ((temp.quantityInCart ?? 0) > 1 ? 1 : 0));
      notifyListeners();
    }
  }
}
