import 'package:flutter/material.dart';

class BMI2 extends StatefulWidget {
  final double result;

  const BMI2({super.key, required this.result});

  @override
  State<BMI2> createState() => _BMI2State();
}

class _BMI2State extends State<BMI2> {
  String resultStr() {
    switch (widget.result.toInt()) {
    // widget -----> to access result
      case <= 18.5:
        {
          return "UnderWeight";
        }
      case > 18.5 && <= 25:
        {
          return "Normal";
        }
      case > 25 && <= 30:
        {
          return "OverWeight";
        }
      default:
        return "Obese";
    }
  }

  String desc() {
    switch (widget.result.toInt()) {
      case <= 18.5:
        {
          return "You are below the normal body weight."
              "You may need to eat more nutritious food.";
        }
      case > 18.5 && <= 25:
        {
          return "You have a normal body weight. "
              "Great job! Keep maintaining your healthy lifestyle.";
        }
      case > 25 && <= 30:
        {
          return "You are slightly above the normal body weight. "
              "Regular exercise and a balanced diet may help.";
        }
      default:
        return "Your BMI is in the obesity range. "
            "Consider consulting a healthcare professional "
            "for personalized advice.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Result:",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  size: 25,
                ),
              ),

              SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Color(0xff1A1F38),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultStr(),
                      style: TextStyle(
                        color: Color(0xff09FF7A),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60),
                    Text(
                      "${widget.result.ceilToDouble()}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 120),
                    Text(
                      desc(),
                      style: TextStyle(color: Colors.white, fontSize: 17),
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
}
