import 'package:dionniebee/app/app.locator.dart';
import 'package:dionniebee/app/app.router.dart';
import 'package:dionniebee/ui/common/colors.dart';
import 'package:dionniebee/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DrawerMenu extends StatelessWidget {
  final bool selected;
  final String title;
  final Function() onTap;
  const DrawerMenu(
      {super.key,
      required this.title,
      required this.onTap,
      this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: selected ? kcPrimaryColor : null,
        splashColor: Colors.transparent,
        onTap: () {
          //    Navigator.pop(context);
          //   Future.delayed(const Duration(milliseconds: 200));
          onTap();
        },
        title: Text(title,
            style: TextStyle(
                fontSize: 14, color: selected ? Colors.white : Colors.white)),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getParentViewModel<DashboardViewModel>(context);
    int currentIndex = viewModel.currentIndex;

    return Drawer(
      backgroundColor: kcPrimaryColorDark,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.account_circle_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                trailing: TextButton(
                    onPressed: () async {
                      await locator<RouterService>().navigateToAuthView();
                    },
                    child: const Text(
                      "Login/Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    )),
              ),
              Column(children: [
                DrawerMenu(
                  selected: currentIndex == 0,
                  title: "Home",
                  onTap: () async {
                    viewModel.setIndex(0);
                  },
                ),
                DrawerMenu(
                  selected: currentIndex == 1,
                  title: "Promos",
                  onTap: () async {
                    viewModel.setIndex(1);
                  },
                ),
                DrawerMenu(
                  selected: currentIndex == 2,
                  title: "Orders",
                  onTap: () async {
                    viewModel.setIndex(2);
                  },
                ),
                DrawerMenu(
                  selected: currentIndex == 3,
                  title: "Stores",
                  onTap: () async {
                    viewModel.setIndex(3);
                  },
                ),
                DrawerMenu(
                  selected: currentIndex == 4,
                  title: "Tutorial",
                  onTap: () async {},
                ),
                DrawerMenu(
                  selected: currentIndex == 5,
                  title: "About Use",
                  onTap: () async {},
                ),
                DrawerMenu(
                  selected: currentIndex == 6,
                  title: "Feedback",
                  onTap: () async {},
                ),
                DrawerMenu(
                  selected: currentIndex == 7,
                  title: "Contact Us",
                  onTap: () async {},
                ),
                DrawerMenu(
                  selected: currentIndex == 8,
                  title: "Book a Virtual Party",
                  onTap: () async {},
                ),
                DrawerMenu(
                  selected: currentIndex == 9,
                  title: "FAQs",
                  onTap: () async {},
                ),
                DrawerMenu(
                  selected: currentIndex == 10,
                  title: "Terms & Conditions",
                  onTap: () async {},
                ),
                DrawerMenu(
                  selected: currentIndex == 11,
                  title: "Privacy Policy",
                  onTap: () async {},
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
