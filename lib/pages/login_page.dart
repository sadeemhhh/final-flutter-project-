
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/database.dart';
import 'package:flutter_application_1/constant/spacing.dart';
import 'package:flutter_application_1/extension/navigation.dart';
import 'package:flutter_application_1/pages/signin_page.dart';
import 'package:flutter_application_1/widgets/TextFieldWidget%20.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 242, 212),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Log-in",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            height24,
            TextFieldWidget(
              controller: emailController,
              text: "enter email here",
            ),
            height24,
            TextFieldWidget(
              controller: passwordController,
              text: "enter password here",
              
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("If you do not have an account:"),
                TextButton(
                  onPressed: () {
                    context.pushAndRemove(
                      const SignIn(),
                    );
                  },
                  child: const Text(
                    "Signin",
                    style: TextStyle(color:  Colors.black),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await Database().login(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  if (context.mounted) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignIn()),
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
                "Login",
                style: TextStyle(fontSize: 18,color:  Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}