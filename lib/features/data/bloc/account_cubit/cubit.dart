part of AccountPageLibrary;

class AccountPageCubit extends Cubit<AccountPageState> {
  AccountPageCubit() : super(AccountInitialState());


  void init() async {
    print("Account Page Init");
  }

}
