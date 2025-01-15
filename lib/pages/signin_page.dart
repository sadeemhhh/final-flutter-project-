
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/database.dart';
import 'package:flutter_application_1/constant/spacing.dart';
import 'package:flutter_application_1/extension/navigation.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/movie_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   TextEditingController emailaddress = TextEditingController();
    TextEditingController passwordaddress = TextEditingController();

@override
@override
  void dispose() {
    emailaddress.dispose();
    passwordaddress.dispose();
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
              "sign up or dont it up to you ! jk",
              style: TextStyle(fontSize: 24),
            ),
            height24,
            TextField(
              controller: emailaddress,
              decoration: const InputDecoration(
                labelText: "enter email :)",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),),
              ),
            ),
            height24,
            TextField(controller: passwordaddress,
            decoration: const InputDecoration(
                labelText: "enter password :)",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center, children:[
              Text("you have an account way to go !"),
             TextButton(onPressed: (){
              context.pushAndRemove(const LoginPage());
             }, child: Text("login",style: TextStyle(color: Colors.black),),),

            ],),
            height24,
            ElevatedButton(onPressed: () async {
              try{
              await Database().singup(email: emailaddress.text, password: passwordaddress.text);
              if(context.mounted){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>LoginPage()));
              }} catch(e){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())),);
            }}, style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 106, 223)
            ),
             child: const Text("sign up why dont you !",style: TextStyle(fontSize: 18,color: Colors.black),))
          ],
        ),
      ),
    );
  }
}