import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Container());
  Firestore.instance
      .collection("col")
      .document("doc")
      .setData({"texto": "Jorge"});
}
