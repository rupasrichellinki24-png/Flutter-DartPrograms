import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();

  String result = "";

  void calculateBMI() {
    double w = double.parse(weight.text);
    double h = double.parse(height.text);

    h = h / 100;

    double bmi = w / (h * h);

    String category;

    if (bmi < 18.5) {
      category = "Underweight";
    } else if (bmi < 25) {
      category = "Normal Weight";
    } else if (bmi < 30) {
      category = "Overweight";
    } else {
      category = "Obesity";
    }

    setState(() {
      result = "Your BMI is ${bmi.toStringAsFixed(2)}\nCategory: $category";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            SizedBox(height: 30),

            TextField(
              controller: weight,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Weight (kg)",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: height,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Height (cm)",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: calculateBMI,
              child: Text("Calculate BMI"),
            ),

            SizedBox(height: 30),

            Text(
              result,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
