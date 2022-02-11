//import 'dart:convert';
//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/PaymentHistoryInformation.dart';

void main() async {
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

//
//
//\\ ignore: deprecated_member_use
/*List notes=  List<PaymentHistoryInformation>();
Future<List<PaymentHistoryInformation>>  fetchNotes() async{

\
var notesJson=json.decode(response.toString());

for(var noteJson in notesJson){
  notes.add(PaymentHistoryInformation.fromJson(noteJson));
}*/
//List<PaymentHistoryInformation> list1;//=PaymentHistoryInformation.fromJson(response[1]);

  PaymentHistoryInformation payments =
      PaymentHistoryInformation.fromJson((response[1]));

  //for(var i=1; i<=5;i++){
  //  PaymentHistoryInformation payments =  PaymentHistoryInformation.fromJson((response[i])) ;
  // List1[i].add(payments);
//}
  // payments.toJson(); //make a loop to populate toJson the responses
  // var monz = payments.amount;
  /////JSON IS ALREADY IN ARRAYS LOOK AT PAYMENT HISTORYINFORMATION
//}
  runApp(
    MyApp(
      items: List<String>.generate(2, (i) => payments.amount.toString()),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key? key, required this.items}) : super(key: key);
  static const String _title = 'Flutter Code Sample';
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

  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    PaymentHistoryInformation payments =
        PaymentHistoryInformation.fromJson((response[1]));
    List<PaymentHistoryInformation> list1 = [payments];
    for (int p = 0; p < 5; p++) {
      list1.add(PaymentHistoryInformation.fromJson(response[p]));
    }
    // var amount= payments.amount;
    List<String> date = ["red"];
    for (var i = 0; i < 5; i++) {
      date.add(list1[i].date.toString());
    }
    var dates = payments.date;
    var ccy = payments.ccy;
    var status = payments.status;
    var date3 = date[2].toString();
    return Column(
      children: <Widget>[
        for (var i = 0; i < 5; i++)
          ExpansionTile(
            title: Text("$date3 "),
            subtitle: Text('$ccy'),
            children: <Widget>[
              ListTile(title: Text('$status')),
            ],
          ),
      ],
    );
    // }
  }
}

PaymentHistoryInformation getPaymentInfo(var text, int num) {
  PaymentHistoryInformation neb = (PaymentHistoryInformation.fromJson(text[5]));
  return neb;
}
