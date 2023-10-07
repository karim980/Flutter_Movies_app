import 'package:flutter/cupertino.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
        border: TableBorder.all(),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Text('Row 1, Column 2'),
            ),
            TableCell(
              child: Text('Row 1, Column 3'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Row 2, Column 2'),
            ),
            TableCell(
              child: Text('Row 2, Column 3'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text('Row 3, Column 2'),
            ),
            TableCell(
              child: Text('Row 3, Column 3'),
            ),
          ],
        ),
      ],
    );
  }
}
