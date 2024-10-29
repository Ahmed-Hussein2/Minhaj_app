import 'package:flutter/material.dart';

class AzkarListView extends StatefulWidget {
  const AzkarListView({super.key});

  @override
  State<AzkarListView> createState() => _AzkarListViewState();
}

class _AzkarListViewState extends State<AzkarListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return;
      }),
    );
  }
}
