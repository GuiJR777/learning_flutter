import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _background() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/background.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _filter() {
    return Container(
      color: Colors.white.withOpacity(0.5),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 180,
                  child: Image.asset('assets/images/flutter_logo.png'),
                ),
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'User email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 32),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'User password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                    onPressed: (() {
                      if (email == "my_email@local.local" &&
                          password == "my_password") {
                        Navigator.of(context).pushReplacementNamed('/home');
                      }
                    }),
                    child: Text('Login'))
              ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [_background(), _filter(), _body()]));
  }
}
