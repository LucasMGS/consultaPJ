import 'package:consultapj/models/company_model.dart';
import 'package:flutter/material.dart';

class AddressContent extends StatelessWidget {
  final Company company;
  const AddressContent({Key? key, required this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Cidade: ${company.address?.city ?? 'N/D'}',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('Estado: ${company.address?.state ?? 'N/D'}'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Telefone: ${company.phone ?? 'N/D'}',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('Porte: ${company.size ?? 'N/D'}'),
            ],
          ),
          SizedBox(height: 10),
          Text('Email: ${company.email ?? 'N/D'}'),
        ],
      ),
    );
  }
}
