import 'package:dionniebee/app/app.locator.dart';
import 'package:dionniebee/global/spacing.dart';
import 'package:dionniebee/ui/views/dashboard/widgets/page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'promo_viewmodel.dart';

class PromoView extends StackedView<PromoViewModel> {
  const PromoView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PromoViewModel viewModel,
    Widget? child,
  ) {
    return PageScaffold(
      title: 'PROMO',
      body: LayoutBuilder(builder: (context, size) {
        return SingleChildScrollView(
          padding: fluidPadding(size: size, hPadding: 15, vPadding: 15),
          child: const Column(
            children: [],
          ),
        );
      }),
    );
  }

  @override
  bool get disposeViewModel => false;

  @override
  PromoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      locator<PromoViewModel>();
}
