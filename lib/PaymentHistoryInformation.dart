import 'dart:developer';

import 'package:intl/intl.dart';
import '../Interface/Upya/account_api.dart';
import '../widgets/tools.dart';

class PaymentHistoryInformation {
  String? _contractNumber;
  String? _type;
  int? _amount;
  String? _date;
  String? _mobile;
  String? _status;
  String? _ccy;
  String? _transactionId;

  PaymentHistoryInformation(
      {String? contractNumber,
      String? type,
      int? amount,
      String? date,
      String? mobile,
      String? status,
      String? ccy,
      String? transactionId}) {
    if (contractNumber != null) {
      this._contractNumber = contractNumber;
    }
    if (type != null) {
      this._type = type;
    }
    if (amount != null) {
      this._amount = amount;
    }
    if (date != null) {
      this._date = date;
    }
    if (mobile != null) {
      this._mobile = mobile;
    }
    if (status != null) {
      this._status = status;
    }
    if (ccy != null) {
      this._ccy = ccy;
    }
    if (transactionId != null) {
      this._transactionId = transactionId;
    }
  }

  String? get contractNumber => _contractNumber;
  set contractNumber(String? contractNumber) =>
      _contractNumber = contractNumber;
  String? get type => _type;
  set type(String? type) => _type = type;
  int? get amount => _amount;
  set amount(int? amount) => _amount = amount;
  String? get date => _date;
  set date(String? date) => _date = date;
  String? get mobile => _mobile;
  set mobile(String? mobile) => _mobile = mobile;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get ccy => _ccy;
  set ccy(String? ccy) => _ccy = ccy;
  String? get transactionId => _transactionId;
  set transactionId(String? transactionId) => _transactionId = transactionId;

  PaymentHistoryInformation.fromJson(Map<String, dynamic> json) {
    _contractNumber = json['contractNumber'];
    _type = json['type'];
    _amount = json['amount'];
    _date = json['date'];
    _mobile = json['mobile'];
    _status = json['status'];
    _ccy = json['ccy'];
    _transactionId = json['transactionId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    //data['contractNumber'] = this._contractNumber;
  //  data['type'] = this._type;
    data['amount'] = this._amount;
    data['date'] = this._date;
    data['mobile'] = this._mobile;
    //data['status'] = this._status;
    data['ccy'] = this._ccy;
    //data['transactionId'] = this._transactionId;
    return data;
  }
}
