import 'package:flutter/material.dart';
import 'package:login_page/auth_validators.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Godzilla',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Godzilla Login'),
        ),
        body: const LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Instantiate validator
  final AuthValidators authValidator = AuthValidators();

  // controllers
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  //the focus nodes
  late FocusNode emailFocusNode;
  late FocusNode usernameFocusNode;
  late FocusNode passwordFocusNode;
  late FocusNode confirmpasswordFocusNode;
  @override
  Widget build(BuildContext context) {
    //defining the UI elements

    final emailField = TextField(
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Email",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

// defining the passwordfield
    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

// defining the login button properties
    final loginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: const Color.fromARGB(255, 4, 1, 199),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          onPressed: () {},
          child: const Text(
            "Login",
            textAlign: TextAlign.center,
          ),
        ));

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 155.0,
                  // child: ,
                ),
                const SizedBox(
                  height: 45.0,
                ),
                emailField,
                const SizedBox(
                  height: 25.0,
                ),
                passwordField,
                const SizedBox(
                  height: 35.0,
                ),
                loginButton,
                const SizedBox(
                  height: 15.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
