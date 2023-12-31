import 'package:dionniebee/app/app.locator.dart';
import 'package:dionniebee/ui/views/dashboard/widgets/page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'orders_viewmodel.dart';

class OrdersView extends StackedView<OrdersViewModel> {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OrdersViewModel viewModel,
    Widget? child,
  ) {
    return PageScaffold(
      title: 'HOME',
      body: Container(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
          ),
          child: const Text("Orders")),
    );
  }

  @override
  bool get disposeViewModel => false;

  @override
  OrdersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      locator<OrdersViewModel>();
}
