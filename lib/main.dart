import 'package:flutter/material.dart';
import 'package:flutter_application_2/PaymentPopUpConfirmation.dart';
import 'PaymentHistory.dart';
import 'Settings.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new ElevatedButton(
            child: const Text(' PaymentHistory'),
            onPressed: () {
              Navigator.push(
                  // SettingsPageWidget();
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyApp()) // const SecondRoute()),
                  );
            },
          ),
          ElevatedButton(
            child: const Text('Settings'),
            onPressed: () {
              Navigator.push(
                  // SettingsPageWidget();
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SettingsPageWidget()) // const SecondRoute()),
                  );
            },
          ),
          new ElevatedButton(
            child: const Text('Pop up'),
            onPressed: () {
              Navigator.push(
                  // SettingsPageWidget();
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaymentPopUpWidget()) // const SecondRoute()),
                  );
            },
          ),
        ],
      ),
    );
  }
}

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
          child: const Text('Go back!!!!'),
        ),
      ),
    );
  }
}
