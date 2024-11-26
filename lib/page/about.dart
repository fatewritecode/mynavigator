import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "О приложении",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Colors.yellow,
                decoration: TextDecoration.none),
          ),
          Spacer(),
          const Text(
            "Это тестовое приложения для Навигации 1.0",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                color: Colors.yellow,
                decoration: TextDecoration.none),
          ),
          const SizedBox(
            height: 300,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "назад",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
