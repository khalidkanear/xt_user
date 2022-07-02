import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class barChart extends StatefulWidget {
  const barChart({Key? key}) : super(key: key);

  @override
  State<barChart> createState() => _barChartState();
}

class _barChartState extends State<barChart> {
  final List<Xstreamgym> data = [
    Xstreamgym(
        year: '30 Wed',
        gym: 110,
        barColor: charts.ColorUtil.fromDartColor(Colors.orange, )),
    Xstreamgym(
        year: '31 Thu',
        gym: 90,
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
    Xstreamgym(
        year: '01 Fri',
        gym: 60,
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
    Xstreamgym(
        year: '02 Sat',
        gym: 30,
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
    Xstreamgym(
        year: '04 Mon',
        gym: 5,
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
    Xstreamgym(
        year: '03 Sun',
        gym: 5,
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: XstreamGymChart(
          data: data,
        ),
      ),
    );
  }
}


class XstreamGymChart extends StatelessWidget {
  final List<Xstreamgym> data;

  XstreamGymChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Xstreamgym, String>> series
    = [
      charts.Series(
          id: "subscriber",
          data: data,
          domainFn: (Xstreamgym series, _) =>
          series.year,
          measureFn: (Xstreamgym series, _) =>
          series.gym,
          colorFn: (Xstreamgym series, _) =>
          series.barColor),
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(child: charts.BarChart(series, animate: true)),

        ],
      ),
    );
  }
}


class Xstreamgym {
  final String year;
  final int gym;
  final charts.Color barColor;

  Xstreamgym(
      {required this.year,
        required this.gym,
        required this.barColor
      });
}