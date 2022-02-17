//import '../flutter_flow/flutter_flow_icon_button.dart';
//import '../flutter_flow/flutter_flow_theme.dart';
//import '../flutter_flow/flutter_flow_util.dart';
//import '../flutter_flow/flutter_flow_widgets.dart';
import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class PaymentconfirmationWidget extends StatefulWidget {
  const PaymentconfirmationWidget({Key? key}) : super(key: key);

  @override
  _PaymentconfirmationWidgetState createState() =>
      _PaymentconfirmationWidgetState();
}

class _PaymentconfirmationWidgetState extends State<PaymentconfirmationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF090F13),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                    elevation: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: const EdgeInsets.all(30),
                    child: MaterialButton(
                      //button to query payment or for help if we want to add this feature ???
                      child: const Text(
                        'Query Session State',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        // fuction();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: StatusDisplay("confirmed") // TODO SEND STATUS FROM HERE, this method is lower down
                ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                'Payment Confirmed!', //TODO add backend of payment confirmed or denied or pending
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF4B39EF),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                '\$425.24', //TODO ADD AMOUNT PAID
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF8B97A2),
                  fontSize: 72,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
              child: Text(
                'Your payment has been confirmed, it may take 1-2 hours in order for your payment to go through and show up in your transation list.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF8B97A2),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFF1E2429),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF090F13),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                            child: Text(
                              'Mastercard Ending in 4021', //TODO ADD END OF ACCOUNT NUMBER THEY USED
                              style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF8B97A2),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                            child: Text(
                              '\$425.24', //TODO ADD AMOUNT THEY PAID
                              style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/**
 * image of tick cross or pending showing current status of payment
 */
class StatusDisplay extends StatelessWidget {
  final String status;
  const StatusDisplay(this.status);
  @override
  Widget build(BuildContext context) {
    if(status == "confirmed") { //add a pending option in if statement
      return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color.fromARGB(255, 40, 238, 0), //TODO if statemtns depending on if payment complete pending or declined,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
          child: Icon(
            Icons.check_outlined, //TODO if statemtns depending on if payment complete pending or declined, (use check_circle_outlined for confirmed)
            color: Colors.white, //TODO if statemtns depending on if payment complete pending or declined
            size: 90,
          ),
        ),
      );
    }
     else{
      return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color.fromARGB(255, 40, 238, 0), //TODO if statemtns depending on if payment complete pending or declined,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
          child: Icon(
            Icons
                .close, //TODO if statemtns depending on if payment complete pending or declined, (use check_circle_outlined for confirmed)
            color: Colors
                .white, //TODO if statemtns depending on if payment complete pending or declined
            size: 90,
          ),
        ),
      );
    }
  }







}
