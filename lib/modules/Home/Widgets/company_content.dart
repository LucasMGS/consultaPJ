import 'package:consultapj/models/company_model.dart';
import 'package:flutter/material.dart';

class CompanyContent extends StatelessWidget {
  final Company company;
  const CompanyContent({Key? key, required this.company}) : super(key: key);

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
                Text('Razão social: ${company.name ?? ''}'),
                SizedBox(height: 10),
                Text('Fantasia: ${company.alias ?? ''}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
