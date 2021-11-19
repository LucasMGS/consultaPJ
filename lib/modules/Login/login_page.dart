import 'package:consultapj/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('Acesso'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(15),
            //   child: Text('Acesso'),
            // ),
            Container(
              height: MediaQuery.of(context).size.height - 90,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    child: Text(
                        'Olá seja bem vindo, para continuar faça o login ou efetue o cadastro'),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'E-mail',
                                hintText: 'E-mail',
                                focusColor: Colors.white,
                                alignLabelWithHint: true,
                              ),
                            ),
                            SizedBox(height: 15),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                hintText: 'Senha',
                                focusColor: Colors.white,
                                alignLabelWithHint: true,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.2),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 45,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      child: Text('ACESSAR'),
                                      onPressed: () => Modular.to
                                          .pushReplacementNamed(
                                              Routes.HOME_PAGE),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    height: 45,
                                    width: double.infinity,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                          color: Colors.deepOrange,
                                        ),
                                      ),
                                      child: Text(
                                        'CADASTRAR AGORA',
                                        style:
                                            TextStyle(color: Colors.deepOrange),
                                      ),
                                      onPressed: () {
                                        Modular.to
                                            .pushNamed(Routes.SIGNUP_PAGE);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
