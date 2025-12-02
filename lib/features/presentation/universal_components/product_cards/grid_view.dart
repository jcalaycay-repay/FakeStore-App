import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/implementation/models/product/product.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GridViewProductCard extends StatelessWidget {
  final ProductModel item;
  const GridViewProductCard({
    required this.item,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeSingleton.defaultTheme!.colorScheme.surface,
        borderRadius: BorderRadius.all(
          Radius.circular(8)
        )
      ),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Container(
              height: 150,
              alignment: Alignment.center,
              child: CachedNetworkImage(
                imageUrl: item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(item.price.toString()),
                    ],
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      RatingBar.builder(
                        initialRating: item.rating.rate,
                        itemSize: 16,
                        ignoreGestures: true,
                        glowColor: ThemeSingleton.defaultTheme!.highlightColor,
                        itemBuilder: (context, _){
                          return Icon(
                            Icons.star,
                            color: ThemeSingleton.defaultTheme!.colorScheme.primary,
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
            )
            
          ]
        ),
      ),
    );
  }
}