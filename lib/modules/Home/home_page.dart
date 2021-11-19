import 'package:consultapj/models/company_model.dart';
import 'package:consultapj/modules/Home/Widgets/company_content.dart';
import 'package:consultapj/modules/Home/Widgets/address_content.dart';
import 'package:consultapj/modules/Home/Widgets/searchbar_widget.dart';
import 'package:consultapj/modules/Home/Widgets/title_container.dart';
import 'package:consultapj/utils/services/api.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

late Company company;
String? cnpj;

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    company = Company();
  }

  @override
  Widget build(BuildContext context) {
    _getQuery(String cnpj) async {
      cnpj = cnpj
          .replaceAll('.', '')
          .replaceAll(',', '')
          .replaceAll('-', '')
          .replaceAll('/', '');
      final response = await api.get('/companies/$cnpj?company_max_age=365');
      print(response);
      setState(() {
        company = Company.fromJson(response.data);
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/forgot-password.png',
              //   color: Colors.red,
              height: 200,
              width: 200,
            ),
            SearchBar(getQuery: _getQuery),
            SizedBox(height: 45),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleContainer(text: 'Dados empresa'),
                  CompanyContent(company: company),
                  TitleContainer(text: 'Endereço'),
                  AddressContent(company: company),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
