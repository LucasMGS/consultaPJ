import 'package:consultapj/modules/Home/Widgets/company_content.dart';
import 'package:consultapj/modules/Home/Widgets/address_content.dart';
import 'package:consultapj/modules/Home/Widgets/searchbar_widget.dart';
import 'package:consultapj/modules/Home/Widgets/title_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      
      _getQuery(String query){

      }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket_rounded),
          ),
        ],
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
            SearchBar(),
            SizedBox(height: 45),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleContainer(text: 'Dados empresa'),
                  CompanyContent(),
                  TitleContainer(text: 'Endereço'),
                  AddressContent(),
                  TitleContainer(text: 'Quadro Societário'),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Nome:'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
