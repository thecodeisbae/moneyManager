import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class StatsWidget extends StatelessWidget {
  StatsWidget({Key? key}) : super(key: key);
  final dataMap = <String, double>{"Income": 2700, "Expense": 1500};

  final colorList = <Color>[
    Colors.green,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          child: (PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 1500),
            chartLegendSpacing: 48,
            chartRadius:
            MediaQuery.of(context).size.width / 3.2,
            initialAngleInDegree: 0,
            chartType: ChartType.disc,
            baseChartColor: Colors.grey[300]!,
            colorList: colorList,
            ringStrokeWidth: 32,
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendShape: BoxShape.circle,
              legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Dosis'),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: false,
              chartValueStyle: TextStyle(
                  fontFamily: 'Dosis', color: Colors.white),
              showChartValues: true,
              showChartValuesInPercentage: true,
              showChartValuesOutside: false,
              decimalPlaces: 1,
            ),
          )),
        ));
  }
}
