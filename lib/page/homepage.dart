import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Главная страница",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.yellow),
            ),
            const Spacer(),
            const Center(
                child: FlutterLogo(
              size: 200,
            )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contacs');
                    },
                    child: const Text(
                      "Контакты",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          decoration: TextDecoration.none),
                    )),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: const Text(
                      "О приложении",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          decoration: TextDecoration.none),
                    )),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
