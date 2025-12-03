library RouterLibrary;


import 'package:fakestore/core/libraries/presentation/account.page.library.dart';
import 'package:fakestore/core/libraries/presentation/home.page.library.dart';
import 'package:fakestore/core/routes/enum.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'presentation/product.page.library.dart' show 
  ProductPageCubit,
  ProductPageLogic;

import 'package:fakestore/core/libraries/presentation/cart.page.library.dart' show
  CartPageLogic,
  CartCubit;

part '../routes/router.dart';

// Presentation
part '../../features/presentation/navigation/shell.dart';
part '../../features/presentation/navigation/bottom_navbar.dart';