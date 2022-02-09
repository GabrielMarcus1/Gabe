import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/PaymentHistoryInformation.dart';

void main() async{
final response= ({"contractNumber":"AC499702","type":"MM","amount":38000,"date":"2018-05-04T00:00:00.000Z","mobile":"265995935569","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180504.0841.G38071"});
print(response.toString());
PaymentHistoryInformation phi= PaymentHistoryInformation.fromJson((response));
  runApp(
    MyApp(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;

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