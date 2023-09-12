import 'package:dionniebee/app/models/location_dto.dart';
import 'package:dionniebee/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';
import 'stores_viewmodel.dart';
import 'widgets/map_widget.dart';
import 'widgets/sliding_up_panel_list.dart';

class StoresView extends HookWidget {
  const StoresView({super.key});

  @override
  Widget build(BuildContext context) {
    final tickerProvider = useSingleTickerProvider();
    final AnimatedMapController animatedMapController = AnimatedMapController(
      vsync: tickerProvider,
    );

    return ViewModelBuilder<StoresViewModel>.reactive(
        viewModelBuilder: () => StoresViewModel(),
        initialiseSpecialViewModelsOnce: true,
        onViewModelReady: (viewModel) async {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await viewModel.start();
          });
        },
        builder: (
          BuildContext context,
          StoresViewModel viewModel,
          Widget? child,
        ) {
          return Scaffold(
            body: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [
                    SliverAppBar(
                      forceElevated: true,
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(60),
                        child: ColoredBox(
                          color: Colors.grey.shade300,
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: Colors.yellow.shade900,
                            ),
                            overlayColor:
                                const MaterialStatePropertyAll(Colors.red),
                            tabs: const [
                              Tab(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.delivery_dining,
                                      color: Colors.black,
                                    ),
                                    hSpaceSmall,
                                    Text(
                                      "Delivery",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Tab(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.delivery_dining,
                                      color: Colors.black,
                                    ),
                                    hSpaceSmall,
                                    Text(
                                      "Pick Up",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    SlidingUpPanel(
                      backdropEnabled: true,
                      minHeight: 200,
                      panel:
                          SlidingUpPanelList(items: viewModel.nearbyLocations),
                      body: Padding(
                          padding: const EdgeInsets.only(bottom: 200),
                          child: MapWidget(
                            mapController: animatedMapController,
                            isBusy: viewModel.busy(loaderBusy),
                            isMapReloading: viewModel.busy(mapBusy),
                            center: viewModel.locationNonStreamValue,
                            markers: viewModel.markers,
                            onPositionChanged: (event, point) {
                              viewModel.mapInfo = LocationDto(
                                maxDistance: 1000,
                                geopoint: LatLngDto(
                                  latitude: event.center?.latitude,
                                  longitude: event.center?.longitude,
                                ),
                              );
                            },
                          )),
                    ),
                    const Text("DELIVERY")
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
