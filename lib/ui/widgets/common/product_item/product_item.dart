import 'package:dionniebee/app/models/product_dto.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dionniebee/ui/common/app_colors.dart';
import 'package:dionniebee/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatefulWidget {
  final Function() onTap;
  final Function() onAdd;
  final ProductDto product;
  final Size size;
  const ProductItem(
    this.product, {
    super.key,
    required this.size,
    required this.onAdd,
    required this.onTap,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onAdd();

        setState(() {
          visible = true;
          Future.delayed(const Duration(milliseconds: 1000), () {
            setState(() {
              visible = false;
            });
          });
        });
      },
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: widget.size.width,
              height: widget.size.height,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            CachedNetworkImage(
                              imageUrl: widget.product.imageUrl.toString(),
                              placeholder: (context, url) =>
                                  Container(color: kcLightGrey),
                              errorWidget: (context, url, error) => Container(
                                color: kcLightGrey,
                                child: const Icon(Icons.error),
                              ),
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            /*   Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                  color: Colors.red,
                                  child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 4.0),
                                      child: Text(
                                        "NEW!",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ))),
                            ) */
                          ],
                        ),
                        Expanded(
                          child: Container(
                            color: Theme.of(context).primaryColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.product.name.toString(),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                            fontSize: 16, color: Colors.white)
                                        .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.quicksand().fontFamily,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 4.0,
                                      ),
                                      Opacity(
                                        opacity: 0.6,
                                        child: Text(
                                            widget.product.description
                                                .toString(),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.white)),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        "\$${widget.product.price}",
                                        style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.white)
                                            .copyWith(
                                          fontWeight: FontWeight.w900,
                                          fontFamily:
                                              GoogleFonts.nunito().fontFamily,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.decelerate,
            child: SizedBox(
              width: widget.size.width,
              height: widget.size.height,
              child: Card(
                  color: Colors.black.withOpacity(0.5),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_bag_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                      vSpaceSmall,
                      Text(
                        "Added!",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}