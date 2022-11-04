import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectt/login.dart';

class forgotroute extends StatefulWidget {
  const forgotroute({super.key});

  @override
  State<forgotroute> createState() => _forgotrouteState();
}

class _forgotrouteState extends State<forgotroute> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  Widget _buildResetButton() {
  return 
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255),
              onPrimary: const Color.fromARGB(255, 255, 255, 255),
              shadowColor: const Color.fromARGB(255, 0, 0, 0),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
            ),
            onPressed: resetPassword,
            child: Container(
              child: const Text('RESET PASSWORD',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 22,
                fontFamily: 'Hey',
              ),
              ),   
            ),
          );    
  }
    Widget _buildSpace() {
    return 
    Container(
         child: const Text('',
      ),
    );  
  }
   @override
   Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 5,
        title: const Text(
          'RESET YOUR PASSWORD',
          style: TextStyle(fontSize: 24,
          fontFamily: 'Hey',), 
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 105, 110, 255),
              Color.fromARGB(255, 248, 172, 255),
            ],
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: [
                SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(labelText: 'Email'),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((email) => 
                    email != null && !EmailValidator.validate(email)
                      ? 'Enter a valid email'
                      : null),
                ),
                _buildSpace(),
                _buildResetButton(),   
              ],
            ),
          ),
        ),
    );
   }

   Future resetPassword() async{
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()), 
        );
    try{
    await FirebaseAuth.instance
      .sendPasswordResetEmail(email: emailController.text.trim());
      Navigator.of(context).popUntil((route) => route.isFirst);

    } on FirebaseAuthException catch (e){
      print(e);
      Navigator.of(context).pop();

    }
  }
}
