import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../const/const_colors.dart';
import '../controllers/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key key}) : super(key: key);
  final oCcy = NumberFormat("#,##0", "en_US");

  static const TextStyle stats = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryAppBarColor,
        title: const Text("Dashboard"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildContainer(5, "running\nbids", Colors.blue),
                buildContainer(54, "completed\nbids", Colors.pink),
                buildContainer(50230, "total amount\n(in BDT)", Colors.green),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: const RunningBidsChart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: const CompletedBidsChart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: const TotalAmountChart(),
            ),
          )
        ],
      ),
    );
  }

  Container buildContainer(int num, String type, Color color) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${oCcy.format(num)}",
            style: stats,
          ),
          const SizedBox(height: 5.0),
          Text(
            type.toUpperCase(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
