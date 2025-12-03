library CartPageLibrary;

import 'dart:convert';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/models/cart_item/cart.item.model.dart';
import 'package:fakestore/features/data/repositories/cart.dart';
import 'package:fakestore/features/presentation/pages/cart/empty.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


// Cubit
part '../../../features/data/bloc/cart_cubit/cubit.dart';
part '../../../features/data/bloc/cart_cubit/state.dart';
part '../../../features/data/bloc/cart_cubit/logic.dart';


// Presentation
part '../../../features/presentation/pages/cart/loaded.page.dart';
part '../../../features/presentation/pages/cart/loading.page.dart';
part '../../../features/presentation/pages/cart/components/cart.card.dart';