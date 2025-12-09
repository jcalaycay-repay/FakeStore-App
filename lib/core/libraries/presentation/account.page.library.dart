library AccountPageLibrary;

import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:fakestore/core/local_storages/secure.cache.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/models/user/user.model.dart';
import 'package:fakestore/features/data/repositories/account.dart';
import 'package:fakestore/features/domain/enums/storage.dart';
import 'package:fakestore/features/domain/enums/validator.dart';
import 'package:fakestore/features/presentation/pages/account/states/no_user.dart';
import 'package:fakestore/features/presentation/universal_components/custom.form.dart';
import 'package:fakestore/features/presentation/universal_components/custom.input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

//Cubit
part '../../../features/data/bloc/account_cubit/cubit.dart';
part '../../../features/data/bloc/account_cubit/logic.dart';
part '../../../features/data/bloc/account_cubit/state.dart';

// Presentation
part '../../../features/presentation/pages/account/states/loading.dart';
part '../../../features/presentation/pages/account/states/loaded.dart';
part '../../../features/presentation/pages/account/states/signup.dart';
part '../../../features/presentation/pages/account/states/login.dart';
part '../../../features/presentation/pages/account/components/section.wrapper.dart';


