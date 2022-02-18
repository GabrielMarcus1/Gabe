//import 'dart:convert';
//import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'PaymentHistoryInformation.dart';


//TODO get link to the json and read it in
class MyApp extends StatelessWidget {
 // final List<String> items;

  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Payment History';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var response = [
    {
      "contractNumber": "AC499702",
      "type": "MM",
      "amount": 38000,
      "date": "2018-05-04T00:00:00.000Z",
      "mobile": "265995935569",
      "status": "ACCEPTED",
      "ccy": "MWK",
      "transactionId": "MP180504.0841.G38071"
    },
    {
      "contractNumber": "AC499702",
      "type": "MM",
      "amount": 7500,
      "date": "2018-05-11T00:00:00.000Z",
      "mobile": "265995935569",
      "status": "ACCEPTED",
      "ccy": "MWK",
      "transactionId": "MP180511.1411.D81858"
    },
    {
      "contractNumber": "AC499702",
      "type": "MM",
      "amount": 7500,
      "date": "2018-05-14T00:00:00.000Z",
      "mobile": "265995935569",
      "status": "ACCEPTED",
      "ccy": "MWK",
      "transactionId": "MP180514.1620.H36449"
    },
    {
      "contractNumber": "AC499702",
      "type": "MM",
      "amount": 7500,
      "date": "2018-05-14T00:00:00.000Z",
      "mobile": "265999383457",
      "status": "ACCEPTED",
      "ccy": "MWK",
      "transactionId": "MP180514.1710.G37117"
    },
    {
      "contractNumber": "AC499702",
      "type": "MM",
      "amount": 7500,
      "date": "2018-05-15T00:00:00.000Z",
      "mobile": "265995935569",
      "status": "ACCEPTED",
      "ccy": "MWK",
      "transactionId": "MP180515.1151.H44073"
    },
    {
      "contractNumber": "AC499702",
      "type": "MM",
      "amount": 55000,
      "date": "2018-05-19T00:00:00.000Z",
      "mobile": "265999272701",
      "status": "ACCEPTED",
      "ccy": "MWK",
      "transactionId": "MP180519.0936.G79452"
    },
    {
      "contractNumber": "AC499702",
      "type": "MM",
      "amount": 55000,
      "date": "2018-05-19T00:00:00.000Z",
      "mobile": "265999272701",
      "status": "ACCEPTED",
      "ccy": "MWK",
      "transactionId": "MP180519.0949.G79549"
    }
  ];

  bool _customTileExpanded = false; // isnt used

  @override
  /**
   * builds the body of the page.
   * Currenlty reafing in data from a list. 
   * REMEBER TO REPLACE LIST WITH LINKS TO JSON FILE WE WILL BE USING.
   */
  Widget build(BuildContext context) {
    PaymentHistoryInformation payments =
        PaymentHistoryInformation.fromJson((response[0]));
    List<PaymentHistoryInformation> list1 = [payments]; //initialising array
    for (int p = 1; p < response.length; p++) {
      list1.add(PaymentHistoryInformation.fromJson(response[p]));
    }
    return Column(
      children: <Widget>[
        for (var i = 0; i < response.length; i++)
          IndividualPaymentHistory(list1[i].date.toString(),
              list1[i].amount.toString(), list1[i].ccy.toString())
      ],
    );
  }
}

/**
 * populates the individual drop down list
 */
class IndividualPaymentHistory extends StatelessWidget {
  final String amount;
  final String currency;
  final String date;
  const IndividualPaymentHistory(this.date, this.amount, this.currency);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("$date"),
      subtitle: Text('$amount'),
      children: <Widget>[
        ListTile(title: Text('$currency')),
      ],
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'payments_object.dart';
import 'package:yellow_customer_app/Interface/Upya/payments_api.dart';

class PaymentHistoryList extends StatefulWidget {
  const PaymentHistoryList({Key? key}) : super(key: key);

  @override
  State<PaymentHistoryList> createState() => _PaymentHistoryListState();
}

// STATE CLASS
class _PaymentHistoryListState extends State<PaymentHistoryList> {
  // INSTANCE VARS
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<PaymentHistoryInformation> PaymentsList = [];
  List<Map<String:dynamic>?> response = [];
  // INIT STATE
  @override
  initState() {
    super.initState();
    _fromJsonIterator(response);
  }

  // TAKES IN A LIST OF MAPS AND CREATES PAYMENT OBJECTS LIST
  void _fromJsonIterator(List<Map<String, dynamic>> _mappedResponse) {
    // INSERT INTO LIST
    for (int p = 0; p < _mappedResponse.length; p++) {
      PaymentsList.add(PaymentHistoryInformation.fromJson(_mappedResponse[p]));
    }
  }

  // call api function to get payments string
  void _callApi() async {
    String? tempString = await getPayments("AC499702", "Malawi");
    var response1 = tempString!.split(",").cast<Map<String, Object>>();

    for (var it = 0; it < response1.length; it++) {

    }

  }

  /**
   * builds the body of the page.
   * Currenlty reafing in data from a list. 
   * REMEBER TO REPLACE LIST WITH LINKS TO JSON FILE WE WILL BE USING.
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFD9E5EE),
      body: Column(
        children: <Widget>[
          // const IndividualPaymentHistory("test", "12345678", "qwertyuio")
          for (var i = 0; i < response.length; i++)
            IndividualPaymentHistory(
                PaymentsList[i].date.toString(),
                PaymentsList[i].amount.toString(),
                PaymentsList[i].ccy.toString())
        ],
      ),
    );
  }
}

/**
 * populates the individual drop down list
 */
class IndividualPaymentHistory extends StatelessWidget {
  final String amount;
  final String currency;
  final String date;
  const IndividualPaymentHistory(this.date, this.amount, this.currency);

  String _getDateFromTZZ(String inString) {
    return DateFormat.yMMMd()
        .format(DateTime.parse(inString.substring(0, 10)))
        .toString();
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(_getDateFromTZZ('$date')),
      subtitle: Text('$amount'),
      children: <Widget>[
        ListTile(title: Text('$currency')),
      ],
    );
  }
}
*/
