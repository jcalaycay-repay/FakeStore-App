import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore/features/data/implementation/freezed_models/product/product.model.dart';
import 'package:flutter/material.dart';

class ListViewProductCard extends StatelessWidget {
  final ProductModel item;
  const ListViewProductCard({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(8),
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            flex: 3,
            child: CachedNetworkImage(
              imageUrl: item.imageUrl,
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  "\$${item.price.toStringAsFixed(2)}",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
                Text("Product #${item.id}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
