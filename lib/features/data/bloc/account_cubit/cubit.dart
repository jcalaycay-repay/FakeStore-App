part of AccountPageLibrary;

class AccountPageCubit extends Cubit<AccountPageState> {
  AccountPageCubit() : super(AccountInitialState());


  void init() async {
    if(state is! AccountLoadingState ) load();
    
    final token = await SecureCache.getString(Storage.user);

    if( token == null ){
      emit(
        AccountNoUserState()
      );
    } else {
      final  userData = await AccountRepository().fetchUser();

      emit(AccountLoadedState(user: userData));
    }
  }

  void logout() async{
    
    //  ? Simulate delayed API load
    load();
    await Future.delayed(
      Duration(seconds: 2)
    );

    await SecureCache.delete(Storage.user);

    init();
  }

  void updateForm(AccountPageState state) {
    if(state is LoginState || state is SignupState){
      emit(state);
    } 
  } 

  void submitForm(Map<String, dynamic> data) async {
    final preservedState = state;

    load();

    await Future.delayed(
      Duration.zero,
      () async {
        switch(preservedState){
          case SignupState():
            await AccountRepository().signup(data); 
            break;
          case LoginState():
            await AccountRepository().authLogin(data); 
            break;
          default: log("Invalid Form State"); return;
        }
      }
    );

    init();
  } 



  void loadDummyLoginData(){
    // ignore: unused_local_variable
    final _state = state as LoginState;

    emit( LoginState(
      username: TextEditingController(text: 'mor_2314'),
      password: TextEditingController(text: "83r5^_"),
    ));
  }

  void navigateToLogin() {
    emit(LoginState.empty());
  }

  void navigateToSignup() {
    emit(SignupState.empty());
  }

  void load() {
    emit(AccountLoadingState());
  }





}
