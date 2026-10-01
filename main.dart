import 'package:flutter/material.dart';
import 'program1.dart';
import 'program2.dart';
import 'bmi.dart';
import 'program3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter Programs',
      home: ProgramMenu(),
    );
  }
}

class ProgramMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter Programs'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Program 1'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Program1();
                    },
                  ),
                );
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text('Program 2'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Program2();
                    },
                  ),
                );
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text('BMI Calculator'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return BMI();
                    },
                  ),
                );
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text('Program 3 - Responsive UI'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Program3();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
