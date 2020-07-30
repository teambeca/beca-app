import 'dart:async';

import 'package:beca_app/model/built_account.dart';
import 'package:beca_app/service/account_service.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final AccountService accountService;

  AccountBloc({this.accountService})
      : assert(accountService != null),
        super(AccountInitial());

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    // #region AccountStarted
    if (event is AccountStarted) {
      yield AccountInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        final response = await accountService.getAccount("Bearer $authToken");
        yield AccountSuccess(account: response.body);
      } catch (e) {
        yield AccountFailure(message: e.toString());
      }
    }
    // #endregion

    // #region AccountGet
    if (event is AccountGet) {
      yield AccountInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        final response = await accountService.getAccount("Bearer $authToken");
        yield AccountSuccess(account: response.body);
      } catch (e) {
        yield AccountFailure(message: e.toString());
      }
    }
    // #endregion

    // #region AccountPatch
    if (event is AccountPatch) {
      yield AccountInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        final response = await accountService.patchAccount("Bearer $authToken",
            BuiltAccount((b) {
          if (event.username.isNotEmpty) b..username = event.username;
          if (event.password.isNotEmpty) b..password = event.password;

          return b;
        }));
        yield AccountSuccess(account: response.body);
      } catch (e) {
        yield AccountFailure(message: e.toString());
      }
    }
    // #endregion
  }
}
