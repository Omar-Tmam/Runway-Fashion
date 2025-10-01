import 'package:flutter/material.dart';

class ExpandableSections extends StatelessWidget {
  const ExpandableSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("About product", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 10),
        const ExpansionTile(
          title: Text("Brand"),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Brand info goes here"),
            )
          ],
        ),
        const ExpansionTile(
          title: Text("Size and fit"),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Size guide here"),
            )
          ],
        ),
        const ExpansionTile(
          title: Text("History"),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("History of the product"),
            )
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
