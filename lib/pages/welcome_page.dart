import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/signin_page.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("data:image/jpeg;base64,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"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 800),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 20), 
              child: SizedBox(
                width: 150, 
                height: 50, 
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                    );
                  },
                  child: const Text(
                    "get started",
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(255, 250, 194, 250), 
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
}