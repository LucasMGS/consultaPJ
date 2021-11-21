import 'package:consultapj/utils/constants/routes.dart';
import 'package:consultapj/utils/services/auth_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

late TextEditingController _emailController;
late TextEditingController _passController;
bool isLoading = false;

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passController = TextEditingController();
  }

  void _onAcessar() async {
    try {
      if (_emailController.text.isEmpty || _passController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Preencha os campos corretamente!'),
          backgroundColor: Colors.red[600],
          behavior: SnackBarBehavior.floating,
        ));
        return;
      }
      setState(() {
        isLoading = true;
      });
      final loginData = {
        'email': _emailController.text,
        'password': _passController.text,
      };
      final response = await authApi.post('/login', data: loginData);
      print(response);

      if (response.statusCode == 200) {
        Modular.to.pushReplacementNamed(Routes.HOME_PAGE);
      }
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

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
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: 'E-mail',
                              hintText: 'E-mail',
                              focusColor: Colors.white,
                              alignLabelWithHint: true,
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 15),
                          TextFormField(
                            controller: _passController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              hintText: 'Senha',
                              focusColor: Colors.white,
                              alignLabelWithHint: true,
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.2),
                          Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 45,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    child: !isLoading
                                        ? Text('ACESSAR')
                                        : SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                              strokeWidth: 2,
                                            ),
                                          ),
                                    onPressed: !isLoading ? _onAcessar : null,
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
                                    onPressed: () => Modular.to
                                        .pushNamed(Routes.SIGNUP_PAGE),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
