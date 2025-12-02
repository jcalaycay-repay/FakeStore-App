library AccountPageLibrary;

import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:fakestore/core/local_storages/secure.cache.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/implementation/models/user/user.model.dart';
import 'package:fakestore/features/data/implementation/functions/validators.dart';
import 'package:fakestore/features/data/implementation/repositories/account.dart';
import 'package:fakestore/features/domain/enums/storage.dart';
import 'package:fakestore/features/domain/styles/custom.button.style.dart';
import 'package:fakestore/features/domain/styles/general.input.decoration.dart';
import 'package:fakestore/features/presentation/pages/account/states/no_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Cubit
part '../../../features/data/bloc/account_cubit/cubit.dart';
part '../../../features/data/bloc/account_cubit/logic.dart';
part '../../../features/data/bloc/account_cubit/state.dart';

// Presentation
part '../../../features/presentation/pages/account/states/loading.dart';
part '../../../features/presentation/pages/account/states/loaded.dart';
part '../../../features/presentation/pages/account/states/signup.dart';
part '../../../features/presentation/pages/account/states/login.dart';


