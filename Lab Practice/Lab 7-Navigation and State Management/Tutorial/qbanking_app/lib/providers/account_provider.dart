import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qbanking_app/model/account.dart';

class AccountNotifier extends Notifier<List<Account>> {
  @override
  List<Account> build() {
    initializeAccounts();
    return [];
  }

  void initializeAccounts() async {
    String data = await rootBundle.loadString('assets/data/accounts.json');
    // parse this data into a map
    var accountsMaps = jsonDecode(data);
    // List<Account> accounts = [];
    for (var map in accountsMaps) {
      // accounts.add(Account.fromJson(map));
      addAccount(Account.fromJson(map));
    }
    // state = accounts;
  }

  void addAccount(Account account) {
    state = [...state, account];
  }

  void updateAccount(Account account) {
    // array list and want to update one element
    final index = state.indexWhere((acc) => acc.accountNo == account.accountNo);
    var temp = [...state];
    if (index != -1) {
      temp[index] = account;
      state = temp;
    }
  }
}

final accountNotifierProvider =
    NotifierProvider<AccountNotifier, List<Account>>(() => AccountNotifier());

// 1. create a X class and it extends Notfier [update , delete]
// 2. using the X you will create the provider [constant variable]

// 3. install [wrap the app with the provider]

// 4. accounts = ref.watch(providerName) //reading the data
// 5. ref.read(providerName.notifier).update() //updating the data
// */
