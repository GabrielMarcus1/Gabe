import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/PaymentHistoryInformation.dart';

import 'SecondPage.dart';


void main() async{
 final response= [{"contractNumber":"AC499702","type":"MM","amount":38000,"date":"2018-05-04T00:00:00.000Z","mobile":"265995935569","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180504.0841.G38071"},
 {"contractNumber":"AC499702","type":"MM","amount":39000,"date":"2018-05-04T00:00:00.000Z","mobile":"265995935569","status":"ACCEPTED","ccy":"MWK","transactionId":"MP180504.0841.G38071"}];
PaymentHistoryInformation phi= PaymentHistoryInformation.fromJson((response[1]));
phi.toJson(); //make a loop to populate toJson the responses 
  var monz=phi.amount;
  /////JSON IS ALREADY IN ARRAYS LOOK AT PAYMENT HISTORYINFORMATION
  runApp(
    MyApp(
      items: List<String>.generate(2, (i) => phi.amount.toString()),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Payment History';

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
         onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
          );
          
          }
          
        )
        
        ));
       
      
      }
}

/**
 * Second page which will displayfurther details
 */
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}


            

