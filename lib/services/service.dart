import 'dart:convert';  // For JSON encoding
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ApplicantService {
  final String baseUrl = "https://projectsyntech-dzb2g7dbebe0amde.southindia-01.azurewebsites.net/api/Applicant";

  Future<void> postApplicantData(Map<String, dynamic> data) async {
    final url = Uri.parse(baseUrl);

    try {
      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json", 
        },
        body: jsonEncode(data), 
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Data successfully posted: ${response.body}');
      } else {
        print('Failed to post data: ${response.statusCode}');
        print('Response: ${response.body}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
