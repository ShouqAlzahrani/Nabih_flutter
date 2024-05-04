import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nabih/core/Route.dart';
import 'package:nabih/screens/information.dart';

import '../core/DataPoint.dart';

class LineChartSample extends StatefulWidget {
  @override
  _LineChartSampleState createState() => _LineChartSampleState();
}

class _LineChartSampleState extends State<LineChartSample> {
  List<DataPoint> dataPoints = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    dataPoints = await DataPoint.loadData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: const Color(0xff0E1210),
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [

              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: Text(
                    'السوق',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  navigateTo(context, Information());

                },
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: [

                      Image.asset('img/stcMain.png'),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text('٤١٫٩٥ ر.س',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.w800 ),),
                          Text('⬍ اليوم + ٢٫٣٥ (١٫٩٠٪)',style: TextStyle(fontSize: 14,color: Colors.green,fontWeight:FontWeight.w800 ),),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5, // Makes the chart take half the height of the screen
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LineChart(
                      LineChartData(
                        minY: 0, // Minimum value for Y-axis
                        maxY: 50, // Maximum value for Y-axis
                        gridData: FlGridData(show: true),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                const days = ['الاحد', 'الاثنين', 'الثلاثاء', 'الاربعاء', 'الخميس']; // Days of the week
                                return Text(days[value.toInt() % days.length], style: TextStyle(color: Color(0xFF977927),fontSize: 10),);
                              },
                              reservedSize: 30,
                              interval: 1, // Show each label
                            ),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false), // No titles on top
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false), // No titles on right
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) => Text(value.toInt().toString(), style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                              interval: 10,
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(color: Color.fromARGB(255, 67, 67, 67), width: 1),
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: dataPoints
                                .map((dataPoint) => FlSpot(dataPoints.indexOf(dataPoint).toDouble(), dataPoint.predictedPrice))
                                .toList(),
                            isCurved: true,
                            color: Color(0xFFC7BF76),
                            barWidth: 5,
                            isStrokeCapRound: true,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                          LineChartBarData(
                            spots: dataPoints
                                .where((dataPoint) => dataPoint.actualPrice != null)
                                .map((dataPoint) => FlSpot(dataPoints.indexOf(dataPoint).toDouble(), dataPoint.actualPrice!))
                                .toList(),
                            isCurved: true,
                            color: Color(0xFF155C2F), // Custom green color
                            barWidth: 5,
                            isStrokeCapRound: true,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                        backgroundColor: Color(0xFF0F110F), // Dark mode background
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right:60.0,left: 60),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                      Row(children: [
                        GestureDetector(
                          onTap:(){
                            _showDialogWithInfo(context,'السعر الفعلي','يمثل اللون الذهبي بالبيان السعر الفعلي للسهم في الفترة المعروضة');
                          },
                          child: Container(
                            width: 40,
                            height: 15,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff0d5536),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text('السعر الفعلي',style: TextStyle(color: Color(0xff868686),fontSize: 16,fontWeight: FontWeight.w700),)
                      ],),
                        Row(children: [
                          GestureDetector(
                            onTap:(){
                              _showDialogWithInfo(context,'السعر المتوقع','يمثل اللون الذهبي بالبيان السعر المتوقع للسهم في الفترة المعروضة');
                            },
                            child: Container(
                              width: 40,
                              height: 15,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xffD8C97D),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('السعر المتوقع',style: TextStyle(color: Color(0xff868686),fontSize: 16,fontWeight: FontWeight.w700),)
                        ],),
                    ],),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(children: [
                          GestureDetector(
                            onTap:(){
                              _showDialogWithInfo(context,'السعر','يُعتبر السعر نقطة البداية في الرسم البياني، وهو القيمة التي يتم بيع وشراء السهم عندها في فترة زمنية محددة.');
                            },
                            child: Container(
                              width: 40,
                              height: 15,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('سعر السهم',style: TextStyle(color: Color(0xff868686),fontSize: 16,fontWeight: FontWeight.w700),)
                        ],),
                        Row(

                          children: [
                          GestureDetector(
                            onTap:(){
                              _showDialogWithInfo(context,'الزمن','يُمثل المحور الأفقي في الرسم البياني، ويعكس الفترة الزمنية التي يتم تحليلها.');
                            },
                            child: Container(
                              width: 40,
                              height: 15,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xffA27D27),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('الزمن          ',style: TextStyle(color: Color(0xff868686),fontSize: 16,fontWeight: FontWeight.w700),)

                        ],)
                      ],),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



_showDialogWithInfo(BuildContext context,String title,String desc){
showDialog(
context: context,
builder: (context) => AlertDialog(
backgroundColor: const Color(0xff30A146),
title:
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Align(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xffffffff),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    ),
    Text(
      desc,
      style: TextStyle(
        color: Color(0xffffffff),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),

  ],
),
));
}