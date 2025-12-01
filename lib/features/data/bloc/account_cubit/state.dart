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

class LoginState extends AccountPageState {
  final TextEditingController username;
  final TextEditingController password;

  const LoginState({
    required this.username,
    required this.password,
  });

  factory LoginState.empty()=> LoginState(
    username: TextEditingController(),
    password: TextEditingController() 
  );


  Map<String, dynamic> toMap() => {
    "username": username.value.text,
    "password": password.value.text,
  };

  @override
  List<Object?> get props => [
    username, 
    password
  ];

  
}


class SignupState extends AccountPageState {
  final TextEditingController username;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirmPassword;

  const SignupState({
    required this.username,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  factory SignupState.empty() => SignupState(
    username: TextEditingController(), 
    email: TextEditingController(), 
    password: TextEditingController(),
    confirmPassword: TextEditingController(),
  );

  SignupState copyWith({
    TextEditingController? username,
    TextEditingController? email,
    TextEditingController? password,
    TextEditingController? confirmPassword
  }) => SignupState(
    username: username ?? this.username,
    email: email ?? this.email,
    password: password ?? this.password,
    confirmPassword: confirmPassword ?? this.confirmPassword,
  );

  Map<String, dynamic> toMap() => {
    "username": username.value.text,
    "email": email.value.text,
    "password": password.value.text,
  };

  @override
  List<Object?> get props => [
    username,
    email,
    password,
    confirmPassword,
  ];
}
