import 'package:flutter/services.dart'
    show rootBundle; // Import necessary parts of the Flutter framework.
import 'package:csv/csv.dart'; // Import the CSV package to handle CSV data.

// Define a class for handling data points.
class DataPoint {
  final double predictedPrice; // The predicted price, must be provided.
  final double? actualPrice; // The actual price, optional and can be null.

  // Constructor to create a DataPoint instance. It requires predictedPrice and optionally accepts actualPrice.
  DataPoint({required this.predictedPrice, this.actualPrice});

  // Factory method to create a DataPoint from a CSV row. The row is expected to be a list of dynamic types.
  static DataPoint fromCsv(List<dynamic> row) {
    try {
      // Parse the first element of the row as a double for predictedPrice.
      double predictedPrice = double.parse(row[0].toString().trim());
      // Parse the second element of the row as a double for actualPrice, handling potential empty strings.
      double? actualPrice = row[1].toString().trim().isEmpty
          ? null
          : double.parse(row[1].toString().trim());
      return DataPoint(
          predictedPrice: predictedPrice, actualPrice: actualPrice);
    } catch (e) {
      // If parsing fails, throw a FormatException with details.
      throw FormatException('Failed to parse DataPoint from row: $row');
    }
  }

  // Asynchronous static method to load and parse data from a CSV file.
  static Future<List<DataPoint>> loadData() async {
    // Load CSV data as a string from assets.
    final data = await rootBundle.loadString('assets/Data Points.csv');
    // Convert the CSV data to a list of lists.
    List<List<dynamic>> rows = const CsvToListConverter().convert(data);

    List<DataPoint> dataPoints = [];
    // Iterate over each row, skipping the first row (usually headers).
    for (var row in rows.skip(1)) {
      try {
        // Convert each row to a DataPoint and add to the list.
        dataPoints.add(fromCsv(row));
      } catch (e) {
        // Log any parsing errors and continue processing other rows.
        print(e);
      }
    }
    // Return the list of DataPoints.
    return dataPoints;
  }
}

//shouq & kofaa
