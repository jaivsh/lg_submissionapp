import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await Future.delayed(Duration(seconds: 1));
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black26,
        title: Text(
          "JAIVARDHAN SHUKLA",
          style: GoogleFonts.rajdhani(),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 0, bottom: 10, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/liquidgalaxylogo.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, elevation: 5),
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Center(
                      child: Text("Button 1 is pressed!"),
                    )));
                  },
                  child: Center(
                    child: Text(
                      'BUTTON 1',
                      style: GoogleFonts.rajdhani(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, elevation: 5),
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Center(
                        child: Text("Button 2 is pressed!"),
                      ),
                    ));
                  },
                  child: Center(
                    child: Text(
                      'BUTTON 2',
                      style: GoogleFonts.rajdhani(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, elevation: 5),
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Center(
                      child: Text("Button 3 is pressed!"),
                    )));
                  },
                  child: Center(
                    child: Text(
                      'BUTTON 3',
                      style: GoogleFonts.rajdhani(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, elevation: 5),
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(this.context).showSnackBar(SnackBar(
                        content: Center(
                      child: Text("Button 4 is pressed!"),
                    )));
                  },
                  child: Center(
                    child: Text(
                      'BUTTON 4',
                      style: GoogleFonts.rajdhani(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
