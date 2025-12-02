library CartPageLibrary;

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:fakestore/core/local_storages/cache.dart';
import 'package:fakestore/features/data/implementation/models/product/product.model.dart';
import 'package:fakestore/features/domain/enums/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


// Cubit
part '../../../features/data/bloc/cart_cubit/cubit.dart';
part '../../../features/data/bloc/cart_cubit/state.dart';
part '../../../features/data/bloc/cart_cubit/logic.dart';


// Presentation
part '../../../features/presentation/pages/cart/loaded.dart';
part '../../../features/presentation/pages/cart/loading.dart';