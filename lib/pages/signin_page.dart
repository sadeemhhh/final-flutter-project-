// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/database.dart';
import 'package:flutter_application_1/constant/spacing.dart';
import 'package:flutter_application_1/extension/navigation.dart';
import 'package:flutter_application_1/pages/login_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

@override
@override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 242, 212),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "sing up",
              style: TextStyle(fontSize: 24),
            ),
            height24,
            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "enter email :)",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),),
              ),
            ),
            height24,
            TextField(controller: password,
            decoration: const InputDecoration(
                labelText: "enter password :)",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center, children:[
              Text("if you have an account"),
             TextButton(onPressed: (){
              context.pushAndRemove(const LoginPage());
             }, child: Text("login",style: TextStyle(color: Colors.black),),),

            ],),
            height24,
            ElevatedButton(onPressed: () async {
              try{
              await Database().singup(email: email.text, password: password.text);
              if(context.mounted){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> const LoginPage()));
              }} catch(e){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())),);
            }}, style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 106, 223)
            ),
             child: const Text("sing up",style: TextStyle(fontSize: 18,color: Colors.black),))
          ],
        ),
      ),
    );
  }
}