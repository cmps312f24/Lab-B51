import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qbanking_app/model/beneficiary.dart';

class BeneficiaryNotifier extends Notifier<List<Beneficiary>> {
  @override
  List<Beneficiary> build() {
    loadBeneficiaries();
    return [];
  }

  void loadBeneficiaries() async {
    String data = await rootBundle.loadString('assets/data/beneficiaries.json');
    // parse this data into a map
    var beneficiariesMaps = jsonDecode(data);
    // List<Account> accounts = [];
    for (var map in beneficiariesMaps) {
      // accounts.add(Account.fromJson(map));
      addBeneficiary(Beneficiary.fromJson(map));
    }
  }

  void addBeneficiary(Beneficiary beneficiary) {
    state = [...state, beneficiary];
  }

  void updateAccount(Beneficiary beneficiary) {
    // array list and want to update one element
    final index =
        state.indexWhere((ben) => ben.accountNo == beneficiary.accountNo);
    var temp = [...state];
    if (index != -1) {
      temp[index] = beneficiary;
      state = temp;
    }
  }
}

final beneficiaryNotifierProvider =
    NotifierProvider<BeneficiaryNotifier, List<Beneficiary>>(
        () => BeneficiaryNotifier());
