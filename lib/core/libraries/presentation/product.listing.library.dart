library ProductListingPageLibrary;

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/core/local_storages/cache.dart';
import 'package:fakestore/features/data/models/product/product.model.dart';
import 'package:fakestore/features/data/models/user/user.model.dart';
import 'package:fakestore/features/data/repositories/product.dart';
import 'package:fakestore/features/domain/enums/input.type.dart';
import 'package:fakestore/features/domain/enums/storage.dart';
import 'package:fakestore/features/domain/enums/validator.dart';
import 'package:fakestore/features/presentation/pages/product.listing/loaded.dart';
import 'package:fakestore/features/presentation/universal_components/custom.form.dart';
import 'package:fakestore/features/presentation/universal_components/custom.input.dart';
import 'package:fakestore/features/presentation/universal_components/file.upload.area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';


// Cubit
part '../../../features/data/bloc/product.listing/cubit.dart';
part '../../../features/data/bloc/product.listing/logic.dart';
part '../../../features/data/bloc/product.listing/state.dart';


// Presentation Layer
part '../../../features/presentation/pages/product.listing/loading.dart';
part 'package:fakestore/features/presentation/pages/product.listing/product.listing.form.dart';