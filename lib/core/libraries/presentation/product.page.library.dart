library ProductPageLibrary;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/implementation/models/product/product.model.dart';
import 'package:fakestore/features/data/implementation/repositories/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


// Cubit
part '../../../features/data/bloc/product/cubit.dart';
part '../../../features/data/bloc/product/logic.dart';
part '../../../features/data/bloc/product/state.dart';


// Presentation
part '../../../features/presentation/pages/product/loaded.product.page.dart';
part '../../../features/presentation/pages/product/loading.product.page.dart';