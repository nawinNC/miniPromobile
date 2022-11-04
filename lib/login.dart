import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formstate = GlobalKey<FormState>();
  String? email;
  // ignore: non_constant_identifier_names
  String? Password;
  final auth = FirebaseAuth.instance;

  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email',
          style:
              TextStyle(color: Colors.white, fontSize: 17.0, fontFamily: 'Hey'),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
              borderRadius: const BorderRadius.all(
                  Radius.circular(10.0)), // Set rounded corner radius
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
              ] // Make rounded corner of border
              ),
          height: 60.0,
          child: TextFormField(
            onSaved: (value) {
              email = value!.trim();
            },
            validator: (value) {
              if (!validateEmail(value!)) {
                return '                                        Please Enter in E-mail field';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 166, 0, 255),
              ),
              hintText: 'Enter your Email',
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style:
              TextStyle(color: Colors.white, fontSize: 17.0, fontFamily: 'Hey'),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
              borderRadius: const BorderRadius.all(
                  Radius.circular(10.0)), // Set rounded corner radius
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
              ] // Make rounded corner of border
              ),
          height: 60.0,
          child: TextFormField(
            onSaved: (value) {
              Password = value!.trim();
            },

            validator: (value) {
              if (value!.length < 8) {
                return '                           Please Enter more than 8 Character';
              } else {
                return null;
              }
            },
            obscureText: true,
            style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14.0),
              // ignore: prefer_const_constructors
              prefixIcon: Icon(
                Icons.lock,
                color: const Color.fromARGB(255, 166, 0, 255),
              ),
              hintText: 'Enter your Password',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgetPassWord() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/forgot');
        },
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
              decoration: TextDecoration.underline, color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color.fromARGB(255, 221, 0, 255),
        onPrimary: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 60), //////// HERE
      ),
      child: Container(
        child: const Text(
          'Login',
          style:
              TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'Hey'),
        ),
      ),
      onPressed: () async {
        if (_formstate.currentState!.validate()) {
          print('Valid Form');
          _formstate.currentState!.save();
          try {
            await auth
                .signInWithEmailAndPassword(email: email!, password: Password!)
                .then((value) {
              if (value.user!.emailVerified) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Login Pass")));
                Navigator.pushNamed(context, '/homepage');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please verify email")));
              }
            }).catchError((reason) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Login or Password Invalid")));
            });
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
              print('No user found for that email.');
            } else if (e.code == 'wrong-password') {
              print('Wrong password provided for that user.');
            }
          }
        } else {
          print('Invalid Form');
        }
      },
    );
  }

  Widget _buildCreateAccountButton() {
    return Container(
      transformAlignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/create');
            },
            child: const Text(
              'Create Account ',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homepage');
            },
            child: const Text(
              'fast login ',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formstate,
            child: (Container(
                height: double.infinity,
                width: double.infinity,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // ignore: prefer_const_literals_to_create_immutables
                    colors: [
                      const Color.fromARGB(255, 105, 110, 255),
                      const Color.fromARGB(255, 248, 172, 255),
                    ],
                    stops: const [0.1, 0.5],
                  ),
                ),
                child: Container(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 120.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Image(image: AssetImage('assets/images/eye.png')),
                        const SizedBox(
                          height: 20.0,
                        ),
                        _buildEmail(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        _buildPassword(),
                        _buildForgetPassWord(),
                        _buildLoginButton(),
                        _buildCreateAccountButton(),
                      ],
                    ),
                  ),
                )))));
  }
}

bool validateEmail(String value) {
  RegExp regex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  return (!regex.hasMatch(value)) ? false : true;
}
