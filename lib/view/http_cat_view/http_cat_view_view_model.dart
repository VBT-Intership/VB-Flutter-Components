import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import './http_cat_view.dart';
import 'model/http_cat_model.dart';
import 'package:http/http.dart' as http;

abstract class HttpCatViewViewModel extends State<HttpCatView> {
  // Add your state and logic here
  List<CatModel> httpCats = [];
  final String _baseUrl = "https://hwasampleapi.firebaseio.com/";

  double get pageHeight => MediaQuery.of(context).size.height;
  double get pageWidth => MediaQuery.of(context).size.height;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getHttpCatList();
  }

  Future<void> getHttpCatList() async {
    isLoadingChange();
    final response = await http.get("$_baseUrl/http.json");

    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List) {
          httpCats = jsonBody.map((e) => CatModel.fromJson(e)).toList();
        }
        break;
      default:
    }

    isLoadingChange();
  }

  void isLoadingChange() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
