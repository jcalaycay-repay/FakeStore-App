part of AccountPageLibrary;

class AccountPageState extends Equatable {
  const AccountPageState();

  @override
  List<Object?> get props => [];
}


class AccountInitialState extends AccountPageState {}

class AccountLoadingState extends AccountPageState {}

class AccountNoUserState extends AccountPageState {}

class AccountLoadedState extends AccountPageState {
  final User user;
  const AccountLoadedState({
    required this.user
  });

  @override
  List<Object?> get props => [
    user
  ];
}
