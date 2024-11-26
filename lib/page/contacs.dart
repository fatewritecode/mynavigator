import 'package:flutter/material.dart';

class Contacs extends StatelessWidget {
  Contacs({super.key});
  final List<String> namecontacs = [
    'Dima',
    'Konor',
    'Rex',
    'Boss',
    'Robert',
    'Grem',
    'Tom'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Контакты",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 500,
              width: double.maxFinite,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: namecontacs.length,
                  itemBuilder: (BuildContext context, int index) {
                    int color = (index % 2 != 0) ? 300 : 500;
                    Color color2 =
                        (index % 2 != 0) ? Colors.black : Colors.white;
                    int numer = index + 1;
                    return Container(
                      height: 50,
                      color: Colors.indigo[color],
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/namecontacs',
                              arguments: namecontacs[index]);
                        },
                        child: Text('${numer} ${namecontacs[index]}',
                            style: TextStyle(fontSize: 25, color: color2)),
                      )),
                    );
                  }),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Назад",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.none),
                )),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
