import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/models/product/product.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

class GridViewProductCard extends StatelessWidget {
  final ProductModel item;
  const GridViewProductCard({
    required this.item,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        'productPage',
        extra: {
          'productId': item.id
        }
      ),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeSingleton.defaultTheme!.colorScheme.surface,
          borderRadius: BorderRadius.all(
            Radius.circular(8)
          ),
          boxShadow: [
            BoxShadow(
              color: ThemeSingleton.defaultTheme!.shadowColor.withAlpha(50),
              blurRadius: .25,
              offset: Offset(0, .5)
            )
          ]
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
                          style: Theme.of(context).textTheme.labelLarge,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "\$${item.price.toStringAsFixed(2)}",
                          style: ThemeSingleton.defaultTheme!.textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.error,
                            fontSize: 20
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        RatingBar.builder(
                          initialRating: item.rating.rate,
                          itemSize: 16,
                          ignoreGestures: true,
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
              )
              
            ]
          ),
        ),
      ),
    );
  }
}