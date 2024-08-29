import 'package:flutter/material.dart';

class TableWithTwoColumns extends StatelessWidget {
  final List<TableRow> tableRows;

  const TableWithTwoColumns({super.key, required this.tableRows});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.black),
      children: tableRows,
    );
  }
}
