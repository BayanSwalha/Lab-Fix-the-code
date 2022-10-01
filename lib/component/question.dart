import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qus extends StatelessWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    required this.correctanswer,
  });

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;
  String? correctanswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://www.pixelstalk.net/wp-content/uploads/images5/Teal-Aesthetic-HD-Backgrounds-Computer-768x432.jpg"))),
            child: Text("$qus_text",
                style: GoogleFonts.bitter(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(158, 0, 0, 0)),
                )),
          ),
          Divider(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          if (correctanswer == answer_1) {
                            return AlertDialog(
                              backgroundColor: Colors.green,
                              insetPadding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              content: Container(
                                height: 150,
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: Text(
                                  "Good job :)",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          color: Colors.black54,
                                          letterSpacing: .5,
                                          fontSize: 30)),
                                ),
                              ),
                            );
                          } else {
                            return AlertDialog(
                              backgroundColor: Colors.red,
                              insetPadding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              content: Container(
                                height: 150,
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: Text(
                                  "Try again :(",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          color: Colors.black54,
                                          letterSpacing: .5,
                                          fontSize: 30)),
                                ),
                              ),
                            );
                          }
                        });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 181, 224, 215),
                          border: Border.all(
                              width: 2,
                              strokeAlign: StrokeAlign.center,
                              color: Colors.black38)),
                      width: 170,
                      height: 90,
                      alignment: Alignment.center,
                      child: Text(
                        "$answer_1",
                        style: GoogleFonts.breeSerif(
                            textStyle: TextStyle(fontSize: 25),
                            letterSpacing: .7,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            if (correctanswer == answer_2) {
                              return AlertDialog(
                                backgroundColor: Colors.green,
                                insetPadding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32.0))),
                                content: Container(
                                  height: 150,
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Text(
                                    "Good job :)",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            letterSpacing: .5,
                                            fontSize: 30)),
                                  ),
                                ),
                              );
                            } else {
                              return AlertDialog(
                                backgroundColor: Colors.red,
                                insetPadding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32.0))),
                                content: Container(
                                  height: 150,
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Text(
                                    "Try again :(",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            letterSpacing: .5,
                                            fontSize: 30)),
                                  ),
                                ),
                              );
                            }
                          });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 181, 224, 215),
                            border: Border.all(
                                width: 2,
                                strokeAlign: StrokeAlign.center,
                                color: Colors.black38)),
                        width: 170,
                        height: 90,
                        alignment: Alignment.center,
                        child: Text(
                          "$answer_2",
                          style: GoogleFonts.breeSerif(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  letterSpacing: .7,
                                  fontWeight: FontWeight.w500)),
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          if (correctanswer == answer_3) {
                            return AlertDialog(
                              backgroundColor: Colors.green,
                              insetPadding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              content: Container(
                                height: 150,
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: Text(
                                  "Good job :)",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          color: Colors.black54,
                                          letterSpacing: .5,
                                          fontSize: 30)),
                                ),
                              ),
                            );
                          } else {
                            return AlertDialog(
                              backgroundColor: Colors.red,
                              insetPadding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              content: Container(
                                height: 150,
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: Text(
                                  "Try again :(",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          color: Colors.black54,
                                          letterSpacing: .5,
                                          fontSize: 30)),
                                ),
                              ),
                            );
                          }
                        });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 181, 224, 215),
                          border: Border.all(
                              width: 2,
                              strokeAlign: StrokeAlign.center,
                              color: Colors.black38)),
                      width: 170,
                      height: 90,
                      alignment: Alignment.center,
                      child: Text(
                        "$answer_3",
                        style: GoogleFonts.breeSerif(
                            textStyle: TextStyle(
                                fontSize: 25,
                                letterSpacing: .7,
                                fontWeight: FontWeight.w500)),
                      )),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            if (correctanswer == answer_4) {
                              return AlertDialog(
                                backgroundColor: Colors.green,
                                insetPadding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32.0))),
                                content: Container(
                                  height: 150,
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Text(
                                    "Good job :)",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            letterSpacing: .5,
                                            fontSize: 30)),
                                  ),
                                ),
                              );
                            } else {
                              return AlertDialog(
                                backgroundColor: Colors.red,
                                insetPadding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32.0))),
                                content: Container(
                                  height: 150,
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Text(
                                    "Try again :(",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            letterSpacing: .5,
                                            fontSize: 30)),
                                  ),
                                ),
                              );
                            }
                          });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 181, 224, 215),
                            border: Border.all(
                                width: 2,
                                strokeAlign: StrokeAlign.center,
                                color: Colors.black38)),
                        width: 170,
                        height: 90,
                        alignment: Alignment.center,
                        child: Text(
                          "$answer_4",
                          style: GoogleFonts.breeSerif(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  letterSpacing: .7,
                                  fontWeight: FontWeight.w500)),
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
