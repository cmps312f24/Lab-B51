import 'package:dio/dio.dart';
import 'package:qbanking_app/model/account.dart';
import 'package:qbanking_app/model/beneficiary.dart';
import 'package:qbanking_app/model/transfer.dart';

class BankingRepository {
  //create the Dio object and the base url
  final Dio _dio = Dio();

  //create the base url _baseUrl
  final String _baseUrl = 'https://api1.codedbyyou.com/api';

  // documentation can be found at
  // https://api1.codedbyyou.com/docs

//Add the getCustomerAccounts method

  Future<List<Account>> getCustomerAccounts(int customerId) async {
    Response response = await _dio.get('$_baseUrl/accounts/$customerId');
    if (response.statusCode != 200) {
      throw Exception('Failed to load accounts');
    }
    List<Account> accounts = [];
    for (var accountMap in response.data) {
      accounts.add(Account.fromJson(accountMap));
    }
    return accounts;
  }

// add the getTransfers method
  Future<List<Transfer>> getTransfers(int customerId) async {
    // read the json file
    Response response = await _dio.get('$_baseUrl/transfers/$customerId');
    if (response.statusCode != 200) {
      throw Exception('Failed to load transfers');
    }

    // convert the list of map to a list of account
    List<Transfer> transfers = [];
    for (var transferMap in response.data) {
      transfers.add(Transfer.fromJson(transferMap));
    }
    return transfers;
  }

  //add the getBeneficiaries method
  Future<List<Beneficiary>> getBeneficiaries(int customerId) async {
    Response response = await _dio.get('$_baseUrl/beneficiaries/$customerId');

    // convert the list of map to a list of account
    List<Beneficiary> beneficiaries = [];
    for (var beneficiaryMap in response.data) {
      beneficiaries.add(Beneficiary.fromJson(beneficiaryMap));
    }
    return beneficiaries;
  }

  //add the addTransfer method
  Future<Transfer> addTransfer(Transfer transfer) async {
    final url = '$_baseUrl/transfers/${transfer.cid}';
    Response response = await _dio.post(url, data: transfer.toJson());
    if (response.statusCode == 404) {
      throw Exception('No beneficiary found');
    } else if (response.statusCode == 409) {
      throw Exception('Insufficient funds');
    }
    return Transfer.fromJson(response.data);
  }

  Future<Beneficiary> addBeneficiary(Beneficiary beneficiary) async {
    Response response = await _dio.post(
        '$_baseUrl/beneficiaries/$beneficiary.cid',
        data: beneficiary.toJson());
    return Beneficiary.fromJson(response.data);
  }

  Future<Beneficiary> updateBeneficiary(Beneficiary beneficiary) async {
    Response response = await _dio.put(
        '$_baseUrl/beneficiaries/$beneficiary.cid/${beneficiary.accountNo}',
        data: beneficiary.toJson());
    return Beneficiary.fromJson(response.data);
  }

  Future<bool> removeTransfer(Transfer transfer) async {
    final url = '$_baseUrl/transfers/${transfer.cid}/${transfer.transferId}';
    Response response = await _dio.delete(url);
    if (response.statusCode != 200) {
      throw Exception('Failed to delete transfer');
    }
    return true;
  }
}
