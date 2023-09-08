import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:project2/PageTwo.dart';
import 'package:fl_chart/fl_chart.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu_open,
          color: Colors.grey,
          size: 45,
        ),
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
                MaterialPageRoute(builder: (context) => Pagetwo()),
              );
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagetwo()),
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
          const Padding(
            padding: EdgeInsets.only(top: 5, right: 250),
            child: Text(
              'My cards',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CreditCardWidget(
                    cardNumber: '522408',
                    expiryDate: '11/22',
                    cardHolderName: 'Chanjal',
                    cvvCode: '123',
                    showBackView: false,
                    width: 300,
                    height: 190,
                    cardBgColor: const Color.fromARGB(255, 223, 105, 97),
                    onCreditCardWidgetChange:
                        (CreditCardBrand creditCardBrand) {
                      print(creditCardBrand.toString());
                      print(creditCardBrand.brandName);
                      print(creditCardBrand.hashCode);
                    },
                  ),
                  CreditCardWidget(
                    cardNumber: '522408',
                    expiryDate: '11/22',
                    cardHolderName: 'Chanjal',
                    cvvCode: '123',
                    showBackView: false,
                    width: 300,
                    height: 190,
                    cardBgColor: const Color.fromARGB(255, 97, 116, 222),
                    onCreditCardWidgetChange:
                        (CreditCardBrand creditCardBrand) {
                      print(creditCardBrand.toString());
                      print(creditCardBrand.brandName);
                      print(creditCardBrand.hashCode);
                    },
                  ),
                  CreditCardWidget(
                    cardNumber: '522408',
                    expiryDate: '11/22',
                    cardHolderName: 'Chanjal',
                    cvvCode: '123',
                    showBackView: false,
                    cardBgColor: Colors.blue,
                    width: 300,
                    height: 190,
                    onCreditCardWidgetChange:
                        (CreditCardBrand creditCardBrand) {
                      print(creditCardBrand.toString());
                      print(creditCardBrand.brandName);
                      print(creditCardBrand.hashCode);
                    },
                  ),
                ],
              ),
            ),
          ),
          const Text(
            'Avilable Balance',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 114, 111, 111)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '\$ 33,500',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromARGB(255, 2, 84, 152)),
            ),
          ),
          Container(
            height: 260,
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 7,
                minY: 0,
                maxY: 5.5,
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(showTitles: false),
                  rightTitles: SideTitles(showTitles: false),
                  topTitles: SideTitles(showTitles: false),
                  bottomTitles: SideTitles(
                    showTitles: true,
                    getTitles: (value) {
                      switch (value) {
                        case 0:
                          return '';
                        case 1:
                          return 'Jun';
                        case 2:
                          return 'Jul';
                        case 3:
                          return 'Aug';
                        case 4:
                          return 'Sep';
                        case 5:
                          return 'Oct';
                        case 6:
                          return 'Nov';
                        default:
                          return '';
                      }
                    },
                  ),
                ),
                gridData: FlGridData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 2.5),
                      FlSpot(1, 2.6),
                      FlSpot(2, 3.3),
                      FlSpot(3, 4.7),
                      FlSpot(4, 5),
                      FlSpot(5, 4.3),
                      FlSpot(6, 3.1),
                      FlSpot(7, 2.5),
                      FlSpot(8, 2.6),
                    ],
                    isCurved: true,
                    barWidth: 4,
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
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 4.6),
                      FlSpot(1, 4.2),
                      FlSpot(2, 3.6),
                      FlSpot(3, 3.2),
                      FlSpot(4, 3.1),
                      FlSpot(5, 3.4),
                      FlSpot(6, 4.2),
                      FlSpot(7, 4.8),
                      FlSpot(8, 4.8),
                    ],
                    isCurved: true,
                    dotData: FlDotData(show: false),
                    colors: [Colors.orange],
                    barWidth: 3,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                    height: 75,
                    width: 350,
                    decoration: const BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 8),
                              child: Text(
                                'Your Credit Limit',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6, left: 9),
                              child: Text(
                                '\$ 50,000',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Material(
                            shape:
                                CircleBorder(), 
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pagetwo()),
                                );
                              },
                              child: const IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ),
                          ),
                        ),
                      ],
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
