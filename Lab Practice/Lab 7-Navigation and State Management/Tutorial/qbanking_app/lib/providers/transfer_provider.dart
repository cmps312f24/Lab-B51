import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qbanking_app/model/transfer.dart';

class TransferNotifier extends Notifier<List<Transfer>> {
  @override
  List<Transfer> build() {
    loadTransfers();
    return [];
  }

  void loadTransfers() async {
    String data = await rootBundle.loadString('assets/data/transfers.json');
    var transfersMaps = jsonDecode(data);
    for (var map in transfersMaps) {
      addTransfer(Transfer.fromJson(map));
    }
  }

  void addTransfer(Transfer transfer) {
    state = [...state, transfer];
  }

  void updateTransfer(Transfer transfer) {
    final index =
        state.indexWhere((tran) => tran.transferId == transfer.transferId);
    var temp = [...state];
    if (index != -1) {
      temp[index] = transfer;
      state = temp;
    }
  }
}

final transferNotifierProvider =
    NotifierProvider<TransferNotifier, List<Transfer>>(
        () => TransferNotifier());
