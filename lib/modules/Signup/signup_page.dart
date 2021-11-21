import 'package:consultapj/utils/services/auth_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

late TextEditingController _emailController;
late TextEditingController _passController;
late TextEditingController _confirmPassController;
late GlobalKey<FormState> _formKey;
bool isLoading = false;

class _SignupPageState extends State<SignupPage> {
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passController = TextEditingController();
    _confirmPassController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  _onPressed() async {
    try {
      final formState = _formKey.currentState;

      if (formState != null && formState.validate()) {
        setState(() {
          isLoading = true;
        });
        final userData = {
          'email': _emailController.text,
          'password': _passController.text,
        };
        final response = await authApi.post('/users', data: userData);
        print(response);

        Modular.to.pop();
      } else {
        final snackBar = SnackBar(
          content: Text(
            'Preencha os campos corretamente!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red[600],
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Acesso'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              Image.asset('assets/images/forgot-password.png'),
              SizedBox(height: 20),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('E-mail'),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.white,
                          alignLabelWithHint: true,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 15),
                      Text('Senha'),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: _passController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.white,
                          alignLabelWithHint: true,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 15),
                      Text('Confirmar senha'),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: _confirmPassController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Confirmar senha',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.white,
                          alignLabelWithHint: true,
                        ),
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value != _passController.text) {
                            return "Confirmação de senha diferente da senha!";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                          ),
                          child: Text(
                            !isLoading ? 'Cadastrar' : 'Cadastrando',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: _onPressed,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
