import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dionniebee/app/models/product_dto.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class ProductService with ListenableServiceMixin {
  final collectionReference =
      FirebaseFirestore.instance.collection('products').withConverter(
            fromFirestore: ProductDto.fromFirestore,
            toFirestore: ProductDto.toFirestore,
          );

  ProductService() {
    listenToReactiveValues([_items]);
  }

  final ReactiveValue<List<ProductDto>> _items =
      ReactiveValue<List<ProductDto>>([]);
  List<ProductDto> get items => _items.value;

  Future getAll() async {
    try {
      await collectionReference.get().then((value) {
        _items.value = value.docs.map((e) {
          return e.data().copyWith(id: e.id);
        }).toList();
      });
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<ProductDto?> find(String? id) async {
    await collectionReference.doc(id).get().then((value) => value.data());
    return null;
  }

  Future<void> addItem(ProductDto product) async {
    await collectionReference.add(product);
  }

  Future<void> updateItem(ProductDto product) async {
    await collectionReference
        .doc(product.id.toString())
        .update(product.toJson());
  }

  Future<void> deleteItem(int id) async {
    await collectionReference.doc(id.toString()).delete();
  }
}
