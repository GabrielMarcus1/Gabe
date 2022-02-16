//import 'dart:convert';
//import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'PaymentHistoryInformation.dart';



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
