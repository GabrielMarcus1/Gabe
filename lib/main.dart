import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/PaymentHistoryInformation.dart';

void main() {
  final response= {"contractNumber":"AC499702","type":"MM","amount":38000,"date":"2018-05-04T00:00:00.000Z","mobile":"265995935569","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180504.0841.G38071"};
//  ,{"contractNumber":"AC499702","type":"MM","amount":7500,"date":"2018-05-11T00:00:00.000Z","mobile":"265995935569","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180511.1411.D81858"},{"contractNumber":"AC499702","type":"MM","amount":7500,"date":"2018-05-14T00:00:00.000Z","mobile":"265995935569","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180514.1620.H36449"},{"contractNumber":"AC499702","type":"MM","amount":7500,"date":"2018-05-14T00:00:00.000Z","mobile":"265999383457","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180514.1710.G37117"},{"contractNumber":"AC499702","type":"MM","amount":7500,"date":"2018-05-15T00:00:00.000Z","mobile":"265995935569","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180515.1151.H44073"},{"contractNumber":"AC499702","type":"MM","amount":55000,"date":"2018-05-19T00:00:00.000Z","mobile":"265999272701","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180519.0936.G79452"},{"contractNumber":"AC499702","type":"MM","amount":55000,"date":"2018-05-19T00:00:00.000Z","mobile":"265999272701","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180519.0949.G79549"}];
  PaymentHistoryInformation phi= PaymentHistoryInformation.fromJson(jsonDecode(response.toString()));
  runApp(
    MyApp(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> phi;

  const MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}