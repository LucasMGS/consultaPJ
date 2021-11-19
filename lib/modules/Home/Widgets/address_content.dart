import 'package:flutter/material.dart';

class AddressContent extends StatelessWidget {
  const AddressContent({Key? key}) : super(key: key);

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
                  'Cidade: ',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('Estado: '),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Telefone: ',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('Porte: '),
            ],
          ),
          SizedBox(height: 10),
          Text('Email: '),
        ],
      ),
    );
  }
}
