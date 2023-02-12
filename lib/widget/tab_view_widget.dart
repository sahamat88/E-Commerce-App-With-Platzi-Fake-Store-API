import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/const/utils.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/widget/fav_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class TabViewWidget extends StatelessWidget {
  const TabViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductModel productListProvider = Provider.of<ProductModel>(context);
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black.withOpacity(0.3))),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CachedNetworkImage(
                    imageBuilder: (context, imageProvider) {
                      return Center(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(productListProvider.images![0]),
                            fit: BoxFit.cover,
                          )),
                        ),
                      );
                    },
                    imageUrl: productListProvider.images![0],
                    errorWidget: (context, url, error) {
                      return Text(error.toString());
                    },
                    placeholder: (context, url) {
                      return Container(
                        height: 200,
                        child: Utils.spinkit,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  productListProvider.title.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '\$${productListProvider.price}',
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Positioned(
              right: 20,
              top: 20,
              child: FavButton(
                onTap: () {},
              ))
        ],
      ),
    );
  }
}
