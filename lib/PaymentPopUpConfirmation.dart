//import '../flutter_flow/flutter_flow_theme.dart';
//import '../flutter_flow/flutter_flow_util.dart';
//import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class PaymentPopUpWidget extends StatefulWidget {
  const PaymentPopUpWidget({Key? key}) : super(key: key);

  @override
  _PaymentPopUpWidgetState createState() => _PaymentPopUpWidgetState();
}

class _PaymentPopUpWidgetState extends State<PaymentPopUpWidget> {
  late TextEditingController phoneNumberController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    phoneNumberController = TextEditingController();
    _editingController = TextEditingController(text: initialText);
  }

  bool _isEditingText = false;
  TextEditingController _editingController =
      TextEditingController(text: "");
  String initialText = "Initial Text"; //TODO call method here to place amount needed
  @override
  void dispose() {
    _editingController.dispose();
    // super.dispose();
  }
    int Accountnumber=3; //ACCOUNT NUMBER initialised
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF262D34),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
      /*  decoration: BoxDecoration(
          color: Color(0xFF262D34),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/robinPhoneBG.png',
            ).image,
          ), 
        ), */  //use if picture needs to be inserted
        child: Align(
          alignment: AlignmentDirectional(0, 1),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 /*   Image.asset(
                      'assets/images/df3hg_',
                      width: 240,
                      height: 60,
                      fit: BoxFit.cover,
                    ), */ //use if picture needs to be inserted
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0xFFDBE2E7),
                                ),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Color(0xFF090F13),
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'To Account Number $Accountnumber', //TODO GET ACCOUNT NUMBER AND PLACE IT HERE
                              style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF090F13),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: _editTitleTextField()
                        ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                      child: ElevatedButton(
                        child: const Text('Confirm'),
                        onPressed: () {
                         //TODO ADD BACKEND TO CONFIRM AND PROCESS PAYMENT
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _editTitleTextField() {
    if (_isEditingText) {
      return Center(
        child: TextField(
          onSubmitted: (newValue) {
            setState(() {
              initialText = newValue;
              _isEditingText = false;
            });
          },
          autofocus: true,
          controller: _editingController,
        ),
      );
    }
    return InkWell(
        onTap: () {
          setState(() {
            _isEditingText = true;
          });
        },
        child: Text(
          initialText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ));
  }
}
