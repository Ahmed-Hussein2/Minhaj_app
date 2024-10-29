import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:minhaj/constants.dart';

class ZekrTile extends StatefulWidget {
  final String zekrText;
  final int repeat;
  final String benfit;
  const ZekrTile(
      {super.key,
      required this.zekrText,
      required this.repeat,
      required this.benfit});

  @override
  State<ZekrTile> createState() => _ZekrTileState();
}

class _ZekrTileState extends State<ZekrTile> {
  int count = 0;
  void _incrementCounter() {
    if (count < widget.repeat) {
      setState(() {
        count++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(colors: [Colors.teal, primaryColor]),
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 22, bottom: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.zekrText,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () {
              _incrementCounter();
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: const Color.fromARGB(255, 1, 115, 104),
            child: Text(
              "$count / ${widget.repeat}",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
