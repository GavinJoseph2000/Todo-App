import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FocusMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  // Get.to(const Onboarding2());
                },
                child: const Text(
                  'SKIP',
                  style:
                      TextStyle(height: 5, color: Colors.white, fontSize: 18),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Text(
                  'Focus Mode',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Center(child: CircularTimer()),
              const Padding(
                padding: EdgeInsets.only(left: 21, right: 21, top: 15),
                child: Text(
                  'While your focus mode is on, all of your notifications will be off',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // primary: Color(0xFF8687E7),
                    backgroundColor: const Color(0xFF8687E7),
                    // onPrimary: Color(0xFFFFFFDE),
                    foregroundColor: const Color(0xFFFFFFDE),
                    padding: const EdgeInsets.fromLTRB(45, 24, 45, 24),
                  ),
                  child: const Text(
                    'Start Focusing',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFDE),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // primary: Colors.brown,
                          backgroundColor: Colors.brown,
                          // onPrimary: Color(0xFFFFFFDE),
                          foregroundColor: const Color(0xFFFFFFDE),
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Week',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 300,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: BarChart(
                    BarChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (context, value) => const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 12,
                              decoration: TextDecoration.none),
                          margin: 10,
                          getTitles: (dynamic value) {
                            switch (value.toInt()) {
                              case 0:
                                return 'Sun';
                              case 1:
                                return 'Mon';
                              case 2:
                                return 'Tue';
                              case 3:
                                return 'Wed';
                              case 4:
                                return 'Thu';
                              case 5:
                                return 'Fri';
                              case 6:
                                return 'Sat';
                              default:
                                return '';
                            }
                          },
                        ),
                        leftTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (context, value) => const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 12,
                              decoration: TextDecoration.none),
                          margin: 10,
                          reservedSize: 14,
                          interval: 1,
                          getTitles: (value) {
                            // return '${value.toInt()}h';
                            return '${(value.toInt() * 1).toString()}h';
                          },
                        ),
                      ),
                      borderData: FlBorderData(show: true),
                      barGroups: [
                        BarChartGroupData(
                          x: 0,
                          barRods: [
                            BarChartRodData(
                                y: 3, width: 30, colors: [Colors.blue]),
                          ],
                        ),
                        BarChartGroupData(
                          x: 1,
                          barRods: [
                            BarChartRodData(
                                y: 4, width: 30, colors: [Colors.blue]),
                          ],
                        ),
                        BarChartGroupData(
                          x: 2,
                          barRods: [
                            BarChartRodData(
                                y: 1, width: 30, colors: [Colors.blue]),
                          ],
                        ),
                        BarChartGroupData(
                          x: 3,
                          barRods: [
                            BarChartRodData(
                                y: 3, width: 30, colors: [Colors.blue]),
                          ],
                        ),
                        BarChartGroupData(
                          x: 4,
                          barRods: [
                            BarChartRodData(
                                y: 5, width: 30, colors: [Colors.blue]),
                          ],
                        ),
                        BarChartGroupData(
                          x: 5,
                          barRods: [
                            BarChartRodData(
                                y: 3, width: 30, colors: [Colors.blue]),
                          ],
                        ),
                        BarChartGroupData(
                          x: 6,
                          barRods: [
                            BarChartRodData(
                                y: 6, width: 30, colors: [Colors.blue]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 213.0,
          height: 213.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF555555),
          ),
        ),
        Container(
          width: 180.0,
          height: 180.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: const Center(
            child: Text(
              '00:00',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
