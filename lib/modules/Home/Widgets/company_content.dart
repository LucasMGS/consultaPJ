import 'package:flutter/material.dart';

class CompanyContent extends StatelessWidget {
  const CompanyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Razão social: '),
                SizedBox(height: 10),
                Text('Fantasia: '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
