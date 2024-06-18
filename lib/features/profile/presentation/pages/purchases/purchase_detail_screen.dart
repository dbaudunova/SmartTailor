import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PurchaseDetailScreen extends StatefulWidget {
  const PurchaseDetailScreen({super.key});

  @override
  State<PurchaseDetailScreen> createState() => _PurchaseDetailScreenState();
}

class _PurchaseDetailScreenState extends State<PurchaseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
