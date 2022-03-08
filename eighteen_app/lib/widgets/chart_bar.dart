import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  //const ChartBar({ Key? key }) : super(key: key);
  late final String label;
  late final int spendingAmount;
  late final double spendingPercentageOfTotal;
  ChartBar(this.label, this.spendingAmount, this.spendingPercentageOfTotal);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (cxt, constrains) {
        return Column(
          children: <Widget>[
            Container(
              height: constrains.maxHeight * 0.15,
              child: FittedBox(
                child: Text('\u{20B9}${spendingAmount.toStringAsFixed(0)}'),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: constrains.maxHeight * 0.6,
              width: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: spendingPercentageOfTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constrains.maxHeight * 0.05,
            ),
            Container(
              height: constrains.maxHeight * 0.15,
              child: FittedBox(
                child: Text(label),
              ),
            ),
          ],
        );
      },
    );
  }
}
