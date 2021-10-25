import 'package:flutter/material.dart';
import 'package:tags/models/Detailsmodel.dart';
import 'package:tags/provider/Details%20Provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Details> listdetails = [];

  @override
  void initState() {
    loadDetails();
    super.initState();
  }

  loadDetails() async {
    DetailsProvider detailsProvider = DetailsProvider();
    detailsProvider.loadDetails();
    final details = await detailsProvider.loadDetails();
    listdetails = details;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            // border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
            },
            defaultColumnWidth: FlexColumnWidth(5),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: getRow(listdetails),
          ),
        ),
      ),
    );
  }
}

List<TableRow> getRow(List<Details> details) {
  final detailsColumn = [
    TableRow(children: [
      Center(child: TableCell(child: Text('Name'))),
      Center(child: TableCell(child: Text('Age'))),
      Center(child: TableCell(child: Text('Gender'))),
    ])
  ];
  final detailsRow = details
      .map((Details detail) => TableRow(children: [
            Center(
              child: TableCell(
                child: Text('${detail.name}'),
              ),
            ),
            Center(
              child: TableCell(
                child: Text('${detail.age}'),
              ),
            ),
            Center(
              child: TableCell(
                child: Text('${detail.gender}'),
              ),
            ),
          ]))
      .toList();

  return detailsColumn + detailsRow;
}
