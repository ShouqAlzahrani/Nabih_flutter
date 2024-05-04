import 'package:flutter/services.dart' show rootBundle;
import 'package:csv/csv.dart';

class DataPoint {
  final double predictedPrice;
  final double? actualPrice; // Change the type to nullable

  DataPoint({required this.predictedPrice, this.actualPrice});

  static DataPoint fromCsv(List<dynamic> row) {
    try {
      double predictedPrice = double.parse(row[0].toString().trim());
      double? actualPrice = row[1].toString().trim().isEmpty
          ? null
          : double.parse(row[1].toString().trim());
      return DataPoint(
          predictedPrice: predictedPrice, actualPrice: actualPrice);
    } catch (e) {
      throw FormatException('Failed to parse DataPoint from row: $row');
    }
  }

  static Future<List<DataPoint>> loadData() async {
    final data = await rootBundle.loadString('assets/Data Points.csv');
    List<List<dynamic>> rows = const CsvToListConverter().convert(data);

    List<DataPoint> dataPoints = [];
    for (var row in rows.skip(1)) {
      try {
        dataPoints.add(fromCsv(row));
      } catch (e) {
        print(e); // Log the error and continue processing
      }
    }
    return dataPoints;
  }
}