// Mocks generated by Mockito 5.4.2 from annotations
// in dionniebee/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:ui' as _i9;

import 'package:cloud_firestore/cloud_firestore.dart' as _i2;
import 'package:dionniebee/app/models/location_dto.dart' as _i14;
import 'package:dionniebee/app/models/product_dto.dart' as _i12;
import 'package:dionniebee/services/auth_service.dart' as _i10;
import 'package:dionniebee/services/cart_service.dart' as _i15;
import 'package:dionniebee/services/location_service.dart' as _i13;
import 'package:dionniebee/services/order_service.dart' as _i16;
import 'package:dionniebee/services/product_service.dart' as _i11;
import 'package:faker/faker.dart' as _i6;
import 'package:flutter/material.dart' as _i8;
import 'package:geoflutterfire2/geoflutterfire2.dart' as _i4;
import 'package:latlong2/latlong.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeCollectionReference_0<T extends Object?> extends _i1.SmartFake
    implements _i2.CollectionReference<T> {
  _FakeCollectionReference_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDistance_1 extends _i1.SmartFake implements _i3.Distance {
  _FakeDistance_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGeoFlutterFire_2 extends _i1.SmartFake
    implements _i4.GeoFlutterFire {
  _FakeGeoFlutterFire_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamController_3<T> extends _i1.SmartFake
    implements _i5.StreamController<T> {
  _FakeStreamController_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFaker_4 extends _i1.SmartFake implements _i6.Faker {
  _FakeFaker_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i7.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i8.GlobalKey<_i8.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i8.GlobalKey<_i8.NavigatorState>?);
  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i7.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<T?>? navigateWithTransition<T>(
    _i8.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i8.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i7.Transition? transitionClass,
    _i7.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? replaceWithTransition<T>(
    _i8.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i8.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i7.Transition? transitionClass,
    _i7.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void popUntil(
    _i8.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i8.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? navigateToView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i8.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i7.Transition? transition,
    _i7.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i8.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearStackAndShowView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearTillFirstAndShowView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i8.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i7.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i7.SheetBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #setCustomSheetBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<_i7.SheetResponse<dynamic>?> showBottomSheet({
    required String? title,
    String? description,
    String? confirmButtonTitle = r'Ok',
    String? cancelButtonTitle,
    bool? enableDrag = true,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showBottomSheet,
          [],
          {
            #title: title,
            #description: description,
            #confirmButtonTitle: confirmButtonTitle,
            #cancelButtonTitle: cancelButtonTitle,
            #enableDrag: enableDrag,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i5.Future<_i7.SheetResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i7.SheetResponse<dynamic>?>.value(),
      ) as _i5.Future<_i7.SheetResponse<dynamic>?>);
  @override
  _i5.Future<_i7.SheetResponse<T>?> showCustomSheet<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i9.Color? barrierColor = const _i9.Color(2315255808),
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    String? barrierLabel = r'',
    dynamic customData,
    R? data,
    bool? enableDrag = true,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomSheet,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #barrierLabel: barrierLabel,
            #customData: customData,
            #data: data,
            #enableDrag: enableDrag,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i5.Future<_i7.SheetResponse<T>?>.value(),
        returnValueForMissingStub: _i5.Future<_i7.SheetResponse<T>?>.value(),
      ) as _i5.Future<_i7.SheetResponse<T>?>);
  @override
  void completeSheet(_i7.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeSheet,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i7.DialogService {
  @override
  void registerCustomDialogBuilders(
          Map<dynamic, _i7.DialogBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void registerCustomDialogBuilder({
    required dynamic variant,
    required _i8.Widget Function(
      _i8.BuildContext,
      _i7.DialogRequest<dynamic>,
      dynamic Function(_i7.DialogResponse<dynamic>),
    )? builder,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilder,
          [],
          {
            #variant: variant,
            #builder: builder,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<_i7.DialogResponse<dynamic>?> showDialog({
    String? title,
    String? description,
    String? cancelTitle,
    _i9.Color? cancelTitleColor,
    String? buttonTitle = r'Ok',
    _i9.Color? buttonTitleColor,
    bool? barrierDismissible = false,
    _i7.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #buttonTitle: buttonTitle,
            #buttonTitleColor: buttonTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i5.Future<_i7.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i7.DialogResponse<dynamic>?>.value(),
      ) as _i5.Future<_i7.DialogResponse<dynamic>?>);
  @override
  _i5.Future<_i7.DialogResponse<T>?> showCustomDialog<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i9.Color? barrierColor = const _i9.Color(2315255808),
    bool? barrierDismissible = false,
    String? barrierLabel = r'',
    bool? useSafeArea = true,
    dynamic customData,
    R? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomDialog,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #barrierLabel: barrierLabel,
            #useSafeArea: useSafeArea,
            #customData: customData,
            #data: data,
          },
        ),
        returnValue: _i5.Future<_i7.DialogResponse<T>?>.value(),
        returnValueForMissingStub: _i5.Future<_i7.DialogResponse<T>?>.value(),
      ) as _i5.Future<_i7.DialogResponse<T>?>);
  @override
  _i5.Future<_i7.DialogResponse<dynamic>?> showConfirmationDialog({
    String? title,
    String? description,
    String? cancelTitle = r'Cancel',
    _i9.Color? cancelTitleColor,
    String? confirmationTitle = r'Ok',
    _i9.Color? confirmationTitleColor,
    bool? barrierDismissible = false,
    _i7.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showConfirmationDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #confirmationTitle: confirmationTitle,
            #confirmationTitleColor: confirmationTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i5.Future<_i7.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i7.DialogResponse<dynamic>?>.value(),
      ) as _i5.Future<_i7.DialogResponse<dynamic>?>);
  @override
  void completeDialog(_i7.DialogResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeDialog,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [AuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthService extends _i1.Mock implements _i10.AuthService {
  @override
  _i5.Future<dynamic> signInWithEmail({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithEmail,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> signUpWithEmail({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUpWithEmail,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> resetPassword({required String? password}) =>
      (super.noSuchMethod(
        Invocation.method(
          #resetPassword,
          [],
          {#password: password},
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> resetPasswordRequest({required String? email}) =>
      (super.noSuchMethod(
        Invocation.method(
          #resetPasswordRequest,
          [],
          {#email: email},
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> signInAnonymously() => (super.noSuchMethod(
        Invocation.method(
          #signInAnonymously,
          [],
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ProductService].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductService extends _i1.Mock implements _i11.ProductService {
  @override
  _i2.CollectionReference<Object?> get collectionReference =>
      (super.noSuchMethod(
        Invocation.getter(#collectionReference),
        returnValue: _FakeCollectionReference_0<Object?>(
          this,
          Invocation.getter(#collectionReference),
        ),
        returnValueForMissingStub: _FakeCollectionReference_0<Object?>(
          this,
          Invocation.getter(#collectionReference),
        ),
      ) as _i2.CollectionReference<Object?>);
  @override
  _i5.Stream<List<_i12.ProductDto>> getItemsStream() => (super.noSuchMethod(
        Invocation.method(
          #getItemsStream,
          [],
        ),
        returnValue: _i5.Stream<List<_i12.ProductDto>>.empty(),
        returnValueForMissingStub: _i5.Stream<List<_i12.ProductDto>>.empty(),
      ) as _i5.Stream<List<_i12.ProductDto>>);
  @override
  _i5.Stream<_i12.ProductDto?> getItemStream(String? productId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getItemStream,
          [productId],
        ),
        returnValue: _i5.Stream<_i12.ProductDto?>.empty(),
        returnValueForMissingStub: _i5.Stream<_i12.ProductDto?>.empty(),
      ) as _i5.Stream<_i12.ProductDto?>);
  @override
  _i5.Future<void> updateItem(_i12.ProductDto? product) => (super.noSuchMethod(
        Invocation.method(
          #updateItem,
          [product],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> addItem(_i12.ProductDto? product) => (super.noSuchMethod(
        Invocation.method(
          #addItem,
          [product],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> deleteItem(int? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteItem,
          [id],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [LocationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationService extends _i1.Mock implements _i13.LocationService {
  @override
  _i3.Distance get distance => (super.noSuchMethod(
        Invocation.getter(#distance),
        returnValue: _FakeDistance_1(
          this,
          Invocation.getter(#distance),
        ),
        returnValueForMissingStub: _FakeDistance_1(
          this,
          Invocation.getter(#distance),
        ),
      ) as _i3.Distance);
  @override
  _i4.GeoFlutterFire get geo => (super.noSuchMethod(
        Invocation.getter(#geo),
        returnValue: _FakeGeoFlutterFire_2(
          this,
          Invocation.getter(#geo),
        ),
        returnValueForMissingStub: _FakeGeoFlutterFire_2(
          this,
          Invocation.getter(#geo),
        ),
      ) as _i4.GeoFlutterFire);
  @override
  set geo(_i4.GeoFlutterFire? _geo) => super.noSuchMethod(
        Invocation.setter(
          #geo,
          _geo,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.CollectionReference<Object?> get collectionReference =>
      (super.noSuchMethod(
        Invocation.getter(#collectionReference),
        returnValue: _FakeCollectionReference_0<Object?>(
          this,
          Invocation.getter(#collectionReference),
        ),
        returnValueForMissingStub: _FakeCollectionReference_0<Object?>(
          this,
          Invocation.getter(#collectionReference),
        ),
      ) as _i2.CollectionReference<Object?>);
  @override
  _i5.StreamController<_i3.LatLng?> get locationController =>
      (super.noSuchMethod(
        Invocation.getter(#locationController),
        returnValue: _FakeStreamController_3<_i3.LatLng?>(
          this,
          Invocation.getter(#locationController),
        ),
        returnValueForMissingStub: _FakeStreamController_3<_i3.LatLng?>(
          this,
          Invocation.getter(#locationController),
        ),
      ) as _i5.StreamController<_i3.LatLng?>);
  @override
  set lastDeterminedPosition(_i3.LatLng? _lastDeterminedPosition) =>
      super.noSuchMethod(
        Invocation.setter(
          #lastDeterminedPosition,
          _lastDeterminedPosition,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Stream<_i3.LatLng?> get getLocationStream => (super.noSuchMethod(
        Invocation.getter(#getLocationStream),
        returnValue: _i5.Stream<_i3.LatLng?>.empty(),
        returnValueForMissingStub: _i5.Stream<_i3.LatLng?>.empty(),
      ) as _i5.Stream<_i3.LatLng?>);
  @override
  _i5.Future<_i3.LatLng?> determinePosition() => (super.noSuchMethod(
        Invocation.method(
          #determinePosition,
          [],
        ),
        returnValue: _i5.Future<_i3.LatLng?>.value(),
        returnValueForMissingStub: _i5.Future<_i3.LatLng?>.value(),
      ) as _i5.Future<_i3.LatLng?>);
  @override
  _i5.Stream<List<_i14.LocationDto>> getNearbyPlacesStream(
          _i14.LocationDto? point) =>
      (super.noSuchMethod(
        Invocation.method(
          #getNearbyPlacesStream,
          [point],
        ),
        returnValue: _i5.Stream<List<_i14.LocationDto>>.empty(),
        returnValueForMissingStub: _i5.Stream<List<_i14.LocationDto>>.empty(),
      ) as _i5.Stream<List<_i14.LocationDto>>);
}

/// A class which mocks [CartService].
///
/// See the documentation for Mockito's code generation for more information.
class MockCartService extends _i1.Mock implements _i15.CartService {
  @override
  _i2.CollectionReference<Object?> get collectionReference =>
      (super.noSuchMethod(
        Invocation.getter(#collectionReference),
        returnValue: _FakeCollectionReference_0<Object?>(
          this,
          Invocation.getter(#collectionReference),
        ),
        returnValueForMissingStub: _FakeCollectionReference_0<Object?>(
          this,
          Invocation.getter(#collectionReference),
        ),
      ) as _i2.CollectionReference<Object?>);
  @override
  _i6.Faker get faker => (super.noSuchMethod(
        Invocation.getter(#faker),
        returnValue: _FakeFaker_4(
          this,
          Invocation.getter(#faker),
        ),
        returnValueForMissingStub: _FakeFaker_4(
          this,
          Invocation.getter(#faker),
        ),
      ) as _i6.Faker);
  @override
  set faker(_i6.Faker? _faker) => super.noSuchMethod(
        Invocation.setter(
          #faker,
          _faker,
        ),
        returnValueForMissingStub: null,
      );
  @override
  List<_i12.ProductDto> get cart => (super.noSuchMethod(
        Invocation.getter(#cart),
        returnValue: <_i12.ProductDto>[],
        returnValueForMissingStub: <_i12.ProductDto>[],
      ) as List<_i12.ProductDto>);
  @override
  num get cartTotal => (super.noSuchMethod(
        Invocation.getter(#cartTotal),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as num);
  @override
  num get cartCount => (super.noSuchMethod(
        Invocation.getter(#cartCount),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as num);
  @override
  int get listenersCount => (super.noSuchMethod(
        Invocation.getter(#listenersCount),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i5.Future<void> addOrder() => (super.noSuchMethod(
        Invocation.method(
          #addOrder,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  dynamic addToCart(_i12.ProductDto? product) => super.noSuchMethod(
        Invocation.method(
          #addToCart,
          [product],
        ),
        returnValueForMissingStub: null,
      );
  @override
  dynamic deleteFromCart(String? id) => super.noSuchMethod(
        Invocation.method(
          #deleteFromCart,
          [id],
        ),
        returnValueForMissingStub: null,
      );
  @override
  dynamic toggleSelectCartItem(String? id) => super.noSuchMethod(
        Invocation.method(
          #toggleSelectCartItem,
          [id],
        ),
        returnValueForMissingStub: null,
      );
  @override
  dynamic addCartItemQuantity(String? id) => super.noSuchMethod(
        Invocation.method(
          #addCartItemQuantity,
          [id],
        ),
        returnValueForMissingStub: null,
      );
  @override
  dynamic minusCartItemQuantity(String? id) => super.noSuchMethod(
        Invocation.method(
          #minusCartItemQuantity,
          [id],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void listenToReactiveValues(List<dynamic>? reactiveValues) =>
      super.noSuchMethod(
        Invocation.method(
          #listenToReactiveValues,
          [reactiveValues],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [OrderService].
///
/// See the documentation for Mockito's code generation for more information.
class MockOrderService extends _i1.Mock implements _i16.OrderService {
  @override
  _i2.CollectionReference<Object?> get collectionReference =>
      (super.noSuchMethod(
        Invocation.getter(#collectionReference),
        returnValue: _FakeCollectionReference_0<Object?>(
          this,
          Invocation.getter(#collectionReference),
        ),
        returnValueForMissingStub: _FakeCollectionReference_0<Object?>(
          this,
          Invocation.getter(#collectionReference),
        ),
      ) as _i2.CollectionReference<Object?>);
  @override
  int get listenersCount => (super.noSuchMethod(
        Invocation.getter(#listenersCount),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  void listenToReactiveValues(List<dynamic>? reactiveValues) =>
      super.noSuchMethod(
        Invocation.method(
          #listenToReactiveValues,
          [reactiveValues],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
