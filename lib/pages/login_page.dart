
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/database.dart';
import 'package:flutter_application_1/constant/spacing.dart';
import 'package:flutter_application_1/extension/navigation.dart';
import 'package:flutter_application_1/pages/movie_page.dart';
import 'package:flutter_application_1/pages/signin_page.dart';
import 'package:flutter_application_1/widgets/TextFieldWidget%20.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailCntrl = TextEditingController();
  TextEditingController passwordCntrl = TextEditingController();
  


  @override
  void dispose() {
    emailCntrl.dispose();
    passwordCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 69, 191, 232),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Log-in ! or dont its up to you",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            height24,
            TextFieldWidget(
              controller: emailCntrl,
              text: "enter email :)",
            ),
            height24,
            TextFieldWidget(
              controller: passwordCntrl,
              text: "enter password :)",
              
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("how about we make you an account:"),
                TextButton(
                  onPressed: () {
                    context.pushAndRemove(
                      const SignIn(),
                    );
                  },
                  child: const Text(
                    "Signin right here",
                    style: TextStyle(color:  Colors.black),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await Database().login(
                    email: emailCntrl.text,
                    password: passwordCntrl.text,
                  );
                  if (context.mounted) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  MoviePage()),
                    );
                  }
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(e.toString())),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 248, 237, 237)
              ),
              child: const Text(
                "Login right heree",
                style: TextStyle(fontSize: 18,color:  Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}