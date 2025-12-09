import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/models/product/product.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

class ListViewProductCard extends StatelessWidget {
  final ProductModel item;
  const ListViewProductCard({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(
          'productPage',
          extra: {
            'productId': item.id
          }
        );
      },
      child: Container(
        height: 150,
        padding: EdgeInsets.all(8),
        color: ThemeManager.colorScheme.surface,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
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
                      ],
                    ),
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      RatingBar.builder(
                        initialRating: item.rating.rate,
                        itemSize: 16,
                        ignoreGestures: true,
                        glowColor: ThemeManager.highlightColor,
                        
                        itemBuilder: (context, _){
                          return Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                          );
                        }, 
                        onRatingUpdate: (_) {}
                      ),
                      Text(
                        item.rating.count.toString()
                      )
                    ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
