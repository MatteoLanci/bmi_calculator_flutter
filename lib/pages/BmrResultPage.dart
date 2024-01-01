import 'package:flutter/material.dart';

class BmrResultPage extends StatefulWidget {
  final int bmrRes;

  const BmrResultPage({super.key, required this.bmrRes});

  @override
  State<BmrResultPage> createState() => _BmrResultPageState();
}

class _BmrResultPageState extends State<BmrResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RESULT PAGE'),
      ),
      body: Center(
        child: Text(
          '${widget.bmrRes} Kcal/giorno',
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
