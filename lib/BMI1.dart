import 'package:flutter/material.dart';

import 'BMI2.dart';

class BMI1 extends StatefulWidget {
  const BMI1({super.key});

  @override
  State<BMI1> createState() => _BMI1State();
}

class _BMI1State extends State<BMI1> {
  double height = 150;
  double weight = 50;
  double age = 18;

  double calculate() {
    double heightInM = height / 100;
    return weight / (heightInM * heightInM);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xff1A1F38),
        toolbarHeight: 80,
        centerTitle: true,
        title: const Text(
          'BMI calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 40, right: 40, top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      padding: EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xff1A1F38),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.female,
                            size: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          const Text(
                            'FEMALE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,

                      padding: EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xff1A1F38),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.male,
                            size: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          const Text(
                            'MALE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0xff1A1F38),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "HEIGHT",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            TextSpan(
                              text: "CM",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${height.toInt()}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SliderTheme(
                        data: SliderThemeData(
                          trackHeight: 1,
                          activeTrackColor: Color(0xff6200EE),
                          thumbColor: Color(0xffF10606),
                        ),
                        child: Slider(
                          value: height,
                          min: 0,
                          max: 200,
                          inactiveColor: Colors.white,
                          onChanged: (double newHeight) {
                            setState(() {
                              height = newHeight;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                //Weight , Age
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(vertical: 10),

                      decoration: const BoxDecoration(
                        color: Color(0xff1A1F38),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),

                          Text(
                            '${weight.toInt()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(right: 9, left: 9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (weight.toInt() > 0) {
                                      weight--;
                                      setState(() {});
                                    }
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    weight++;
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(
                        color: Color(0xff1A1F38),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),

                          Text(
                            '${age.toInt()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(right: 9, left: 9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (age.toInt() > 0) {
                                      age--;
                                      setState(() {});
                                    }
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    age++;
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 75),
              ],
            ),
          ),
          //calculate button
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  double result = calculate();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMI2(result: result),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(),
                  backgroundColor: Color(0xffF10606),
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  "CALCULATE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
