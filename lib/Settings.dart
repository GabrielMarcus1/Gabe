//import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';

class SettingsPageWidget extends StatefulWidget {
  const SettingsPageWidget({Key? key}) : super(key: key);

  @override
  _SettingsPageWidgetState createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  Color backgroundColour = Color(0xFF262D34);
  Color usernameAndPictureBackgroundColor = Color.fromARGB(255, 148, 9, 113);
  Color settingOptionsText = Color.fromARGB(255, 6, 175, 226);
  Color settingOptionsIcons = Colors.white;
  Color settingsOptionsIconsText = Color.fromARGB(255, 14, 219, 99);
  Color settingsOptionBorderBox = Color.fromARGB(255, 255, 1, 1);
  String settingsOptionsTextFont = "Lexend Deca";
  double settingOptionsTextSize = 20;
  Color settingsOptionsBox=Color.fromARGB(255, 240, 28, 28);
  @override
  initState() {
    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: backgroundColour,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 160,
            decoration: BoxDecoration(
              color: usernameAndPictureBackgroundColor,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //TO ADD USER PHOTO IF WE WANT TO
                  Card(
                      /*  clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color.fromARGB(255, 255, 1, 1),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),*/

                      /*  child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/seed/339/600',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ), */
                      ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('[Username]', //TODO GET NAME
                              style: TextStyle()),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              '[Email_Address]', //TODO GET EMAIL OR ACCOUNT NUMBER MAYBE
                              style: TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Color.fromARGB(0, 0, 0, 0),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: settingsOptionsBox,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: settingsOptionBorderBox,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontFamily: settingsOptionsTextFont,
                              color: settingOptionsText,
                              fontSize: settingOptionsTextSize,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Card(
                            elevation: 10,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            margin: const EdgeInsets.all(30),
                            child: MaterialButton(
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
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: settingsOptionsBox,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: settingsOptionBorderBox,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Change Password',
                            style: TextStyle(
                              fontFamily: settingsOptionsTextFont,
                              color: settingOptionsText,
                              fontSize: settingOptionsTextSize,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                            child: InkWell(
                              onTap: () {
                                // fuction();
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.info,
                                    color: settingOptionsIcons,
                                    size: 30,
                                  ),
                                  Text(
                                    'Smartphone info',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: settingsOptionsIconsText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: settingsOptionsBox,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: settingsOptionBorderBox,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Notification Settings',
                            style: TextStyle(
                              fontFamily: settingsOptionsTextFont,
                              color: settingOptionsText,
                              fontSize: settingOptionsTextSize,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                            child: InkWell(
                              onTap: () {
                                // fnction
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.info,
                                    color: settingOptionsIcons,
                                    size: 30,
                                  ),
                                  Text(
                                    'click ',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: settingsOptionsIconsText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color:settingsOptionsBox,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: settingsOptionBorderBox,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Terms of Services',
                            style: TextStyle(
                              fontFamily: settingsOptionsTextFont,
                              color: settingOptionsText,
                              fontSize: settingOptionsTextSize,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                            child: InkWell(
                              onTap: () {
                                // fnction
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.info,
                                    color: settingOptionsIcons,
                                    size: 30,
                                  ),
                                  Text(
                                    'click ',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: settingsOptionsIconsText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 40),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Back',
              options: FFButtonOptions(
                width: 110,
                height: 50,
                color: Color(0xFF090F13),
                textStyle: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 0,
                borderSide: BorderSide(
                  color: Color(0xFF090F13),
                  width: 1,
                ),
                borderRadius: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/
