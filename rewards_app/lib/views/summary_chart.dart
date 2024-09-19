import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SummaryChart extends StatelessWidget {
  const SummaryChart({Key? key, required this.maxValue, required this.data1, required this.data2}) : super(key: key);
  final int maxValue;
  final List<FlSpot> data1;
  final List<FlSpot> data2;
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: -500,
        maxY: maxValue.toDouble(),
        borderData: FlBorderData(show: false),
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((e) {
                return LineTooltipItem("${e.y.toStringAsFixed(0)}",
                    Theme.of(context).textTheme.titleMedium!);
              }).toList();
            },
          ),
        ),
        gridData: buildFlGridData(),
        titlesData: buildFlTitlesData(context),
        lineBarsData: [
          buildLineChartBarData(
            data1,
            [Colors.tealAccent.withOpacity(0.5)],
          ),
          buildLineChartBarData(
            data2,
            [Colors.redAccent.withOpacity(0.5)],
          ),
        ],
      ),
    );
  }

  LineChartBarData buildLineChartBarData(data, List<Color> colors) {
    return LineChartBarData(
      belowBarData: BarAreaData(
          color:Colors.grey,
          show: true),
      isCurved: true,
      preventCurveOverShooting: true,
      color: Colors.indigo,
      dotData: FlDotData(show: false),
      spots: data,
    );
  }

  FlTitlesData buildFlTitlesData(context) {
    return FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
          reservedSize: 22,


        ),
      ),


      leftTitles: AxisTitles(
    sideTitles: SideTitles(
        showTitles: false,

        reservedSize: 30,
      )),
    );
  }

  FlGridData buildFlGridData() {
    return FlGridData(
      drawHorizontalLine: true,
      drawVerticalLine: true,
      horizontalInterval: maxValue / 2,
      getDrawingHorizontalLine: (value) {
        return FlLine(
            // dashArray: value == 0 ? null : [4],
            color: Colors.white10,
            strokeWidth: 0.5);
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
            dashArray: value == 0 ? null : [4],
            color: Colors.transparent,
            strokeWidth: 1);
      },
    );
  }
}
