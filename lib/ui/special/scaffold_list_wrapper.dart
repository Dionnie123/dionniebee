import 'dart:math';
import 'package:dionniebee/global/breakpoints.dart';
import 'package:flutter/material.dart';

class ScaffoldListWrapper extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final bool isBusy;
  final Widget busyIndicatorWidget;
  final int itemCount;
  final Widget emptyIndicatorWidget;
  final Widget Function(BuildContext, BoxConstraints) builder;
  final bool fit;
  final List<Widget> topWidgets;
  const ScaffoldListWrapper({
    super.key,
    required this.onRefresh,
    this.isBusy = false,
    this.busyIndicatorWidget = const Center(
      child: CircularProgressIndicator(),
    ),
    required this.itemCount,
    this.emptyIndicatorWidget = const Text("Empty Result"),
    required this.builder,
    this.fit = true,
    this.topWidgets = const [Text("fdsfsf")],
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: constraints.maxWidth,
            minHeight: constraints.maxHeight,
          ),
          child: RefreshIndicator(
            strokeWidth: 3,
            triggerMode: RefreshIndicatorTriggerMode.onEdge,
            onRefresh: () => onRefresh(),
            child: isBusy
                ? busyIndicatorWidget
                : !(itemCount > 0)
                    ? CustomScrollView(slivers: [
                        ...[
                          SliverFillRemaining(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Center(
                                  child: SingleChildScrollView(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15,
                                          horizontal: max(
                                              (screenWidth(context) - 800) / 2,
                                              15)),
                                      child: emptyIndicatorWidget)),
                            ),
                          )
                        ]
                      ])
                    : builder(context, constraints),
          ));
    });
  }
}
