import 'package:flutter/material.dart';

class Namecontacs extends StatelessWidget {
  const Namecontacs({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as String;
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            arguments,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 30,
                color: Colors.yellow,
                decoration: TextDecoration.none),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "$arguments, является очень хорошим студентом, его уважают все педагоги и одногрупники",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 25,
                color: Colors.yellow,
                decoration: TextDecoration.none),
          ),
          const Spacer(),
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
