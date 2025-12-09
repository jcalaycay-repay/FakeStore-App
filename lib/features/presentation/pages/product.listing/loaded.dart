import 'package:fakestore/core/libraries/presentation/product.listing.library.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/models/user/user.model.dart';
import 'package:fakestore/features/presentation/universal_components/product_cards/list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListingLoadedPage extends StatelessWidget {
  final  UserModel user;
  const ProductListingLoadedPage({
    required this.user,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductListingCubit>();
    final state = cubit.state as ProductListingLoadedState;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: AppBar(
            title: Text(
              'Store'
            ),
          )
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ? Merchant Details
            Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: ThemeManager.colorScheme.primary,
                  borderRadius: BorderRadiusDirectional.circular(16),
                  // gradient: SweepGradient(
                  //   colors: [
                  //     ThemeManager.colorScheme.primary,
                  //     ThemeManager.primaryColorLight
                  //   ]
                  // )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Overall Profit',
                      style: ThemeManager.textTheme.labelSmall!.copyWith(
                        color: ThemeManager.colorScheme.onPrimary,
                      ),
                    ),
                    Text(
                      '\$108,638.36',
                      style: ThemeManager.textTheme.displaySmall!.copyWith(
                        color: ThemeManager.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold
                      ),
                      
                    ),
              
                  ],
                )
              ),
            ),

            // ? Product listing
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 2, color: ThemeManager.dividerColor),
                  // left: BorderSide(width: 2, color: ThemeManager.dividerColor),
                  // right: BorderSide(width: 2, color: ThemeManager.dividerColor),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                )
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: state.list.map(
                  (item) => ListViewProductCard(item: item)
                ).toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cubit.switchToProductCreation();
        },
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}