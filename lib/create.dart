import 'package:flutter/material.dart';
import 'package:projectt/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Createpage extends StatefulWidget {
  const Createpage({Key? key}) : super(key: key);

  @override
  State<Createpage> createState() => _CreatepageState();
}

class _CreatepageState extends State<Createpage> {
  final _formstate = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 5,
        title: const Text(
          'SIGN UP',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Hey',
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 105, 110, 255),
          Color.fromARGB(255, 248, 172, 255),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: Form(
            key: _formstate,
            child: ListView(children: <Widget>[
              _buildEmail(),
              _buildPassword(),
              buildRegisterButton()
            ]),
          ),
        ),
      ),
    );
  }

  _buildEmail() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Email :',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 17.0,
              fontFamily: 'Hey',
            ),
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
            ),
            height: 60.0,
            width: 400,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextFormField(
              controller: email,
              validator: (value) {
                if (value!.isEmpty)
                  return 'Please fill in E-mail field';
                else
                  return null;
              },
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
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
        ]);
  }

  _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password :',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 17.0,
            fontFamily: 'Hey',
          ),
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
          ),
          height: 60.0,
          width: 400,
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: TextFormField(
            controller: password,
            validator: (value) {
              if (value!.length < 8)
                return 'Please Enter more than 8 Character';
              else
                return null;
            },
            obscureText: true,
            keyboardType: TextInputType.text,
            style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color.fromARGB(255, 166, 0, 255),
              ),
              hintText: 'Enter your Password',
            ),
          ),
        )
      ],
    );
  }

  _buildSpace() {
    return Container(
      child: const Text(
        '',
      ),
    );
  }

  ElevatedButton buildRegisterButton() {
    return ElevatedButton(
        child: const Text('Register',
            style: TextStyle(fontFamily: ('Hey'), fontSize: 30)),
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 221, 0, 255),
          onPrimary: const Color.fromARGB(255, 255, 255, 255),
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 60), //////// HERE
        ),
        onPressed: () async {
          print('Create new Account');
          if (_formstate.currentState!.validate()) print(email.text);
          print(password.text);
          final _user = await auth.createUserWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim());
          _user.user!.sendEmailVerification();
          ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Register Success")));

          Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route) => false);
  });}

//   Future addUserDetails(String email ) async{
//     await FirebaseFirestore.instance.collection('uers').add({
//       'Email': email
//     });
//   }
}
