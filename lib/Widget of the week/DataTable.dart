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
        body: DataTable(
          rows: getRow(listdetails),
          columns: [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Gender')),
          ],
        ),
      ),
    );
  }
}

List<DataRow> getRow(List<Details> details) => details
    .map((Details detail) => DataRow(cells: [
          DataCell(
            Text('${detail.name}'),
          ),
          DataCell(
            Text('${detail.age}'),
          ),
          DataCell(
            Text('${detail.gender}'),
          ),
        ]))
    .toList();
