import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('E-mail'),
                      SizedBox(height: 5),
                      TextFormField(
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
                      ),
                      SizedBox(height: 15),
                      Text('Senha'),
                      SizedBox(height: 5),
                      TextFormField(
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
                      ),
                      SizedBox(height: 15),
                      Text('Confirmar senha'),
                      SizedBox(height: 5),
                      TextFormField(
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
                            'Cadastrar',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Modular.to.pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //   SvgPicture.asset(
              //     'assets/images/forgot-password.svg',
              //     height: 200,
              //     width: 200,
              //     color: Colors.red,
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
