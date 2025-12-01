library HomePageLibrary;


import 'package:equatable/equatable.dart';
import 'package:fakestore/features/data/implementation/models/product.model.dart';
import 'package:fakestore/features/data/implementation/repositories/product.dart';
import 'package:fakestore/features/presentation/universal_components/product_cards/list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// BLoC
part '../../../features/data/bloc/home_cubit/cubit.dart';
part '../../../features/data/bloc/home_cubit/state.dart';

// Presentation
part '../../../features/presentation/pages/home/main.dart';
part '../../../features/presentation/pages/home/states/loaded.dart';
part '../../../features/presentation/pages/home/states/loading.dart';