import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:project2/PageOne.dart';

class Pagetwo extends StatelessWidget {
  const Pagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.grey),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notification_add,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageOne()),
                );
              },
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageOne()),
                );
              },
              icon: const Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 35,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 400,
              width: 430,
              child: Stack(children: [
                Positioned(
                  left: 27,
                  child: Container(
                    height: 175,
                    width: 175,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 101, 119, 220),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Income',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            '\$ 20,000',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Total',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 210,
                  top: 40,
                  child: Container(
                     height: 175,
                    width: 175,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 242, 110, 100),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Expence',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            '\$ 5,000',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Total',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                )
                ),
                Positioned(
                  left: 27,
                  top: 185,
                  child: Container(
                    height: 175,
                    width: 175,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 89, 175, 246),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Credits',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            '\$ 10,000',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Total',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                ),
                ),
                 Positioned(
                  left: 210,
                  top: 225,
                  child: Container(
                     height: 175,
                    width: 175,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 121, 219, 124),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Others',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            '\$ 2,000',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Total',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                )
                ),
              ],
              ),
              
            ),
            Container(
               height: 150,
            width: 400,
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 7,
                minY: 0,
                maxY: 5,
                borderData: FlBorderData(show: false),

                titlesData: FlTitlesData(
                leftTitles: SideTitles(showTitles: false),
                rightTitles: SideTitles(showTitles: false),
                topTitles: SideTitles(showTitles: false),
                bottomTitles: SideTitles(showTitles: false), 

                ),
                 gridData: FlGridData(show: false),
              
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0,2),
                    FlSpot(0.7,.2),
                    FlSpot(1.4,3),
                    FlSpot(2.1,1.4),
                    FlSpot(2.9,2.6),
                    FlSpot(3.6,1.4),
                    FlSpot(4.2,2.5),
                    FlSpot(4.9,1),
                    FlSpot(5.6,2.7),
                    FlSpot(6.2, 1.5),
                    FlSpot(7,2.8)

                  ],
                  isCurved: true,
                  barWidth: 3,
                  colors: [Color.fromARGB(255, 120, 134, 212)],
                  dotData: FlDotData(show: false),
                   belowBarData: BarAreaData(
                      show: true,
                      colors: [
                        const Color.fromARGB(255, 136, 147, 209),
                        Color.fromARGB(255, 247, 247, 252)
                      ],
                      gradientColorStops: [0.2, 0.8],
                      gradientFrom: Offset(0, 0),
                      gradientTo: Offset(0, 1),
                  
                ),
                ),
              ],
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 15),
              child: Row(
                children: [
                  Text('Payment history',
                  style: TextStyle(fontSize: 25,color: Colors.indigo,
                  fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(left: 170),
                    child: Icon(Icons.add,size: 30,color:Colors.grey,),
                  ),
                ],
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('13.03.2020',
                       style: TextStyle(
                  fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Text('\$ 240', style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: Text('Paid',
                       style: TextStyle(fontSize:17,color: Colors.indigo,
                       fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:15,left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('21.04.2020',
                       style: TextStyle(
                  fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Text('\$ 100', style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 185),
                      child: Text('Pending',
                       style: TextStyle(fontSize:17,color: Colors.orange,
                       fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
        );
  }
}
