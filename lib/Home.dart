import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './models/functions.dart';
import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Home Page",
          style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://wallpaperaccess.com/full/862221.png"))),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.teal,
                      insetPadding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0))),
                      // contentPadding: EdgeInsets.all(10.0),
                      content: Container(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 34, 83, 71)),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Quiz();
                                }));
                              },
                              icon: Icon(
                                Icons.quiz_outlined,
                                color: Colors.tealAccent,
                              ),
                              label: Text(
                                "Go to Quiz page",
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.tealAccent,
                                        letterSpacing: .5,
                                        fontSize: 20)),
                              )),
                        ],
                      )),
                    );
                  });
            },
            child: SizedBox(
              height: 250,
              width: 250,
              child: Text(
                "Do you think you are good in english press me if yes:)",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.white70, letterSpacing: 2, fontSize: 30)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
