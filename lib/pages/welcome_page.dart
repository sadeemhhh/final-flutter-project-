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
            image: NetworkImage("data:https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCk6uMsvoo8BvYRWiNnuloFv5dBrN1oshC1g&s"),
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
                    "get started why dont you !",
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