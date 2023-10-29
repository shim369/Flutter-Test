import 'package:flutter/material.dart';
import 'first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(this.name, {super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/sample.jpg'),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListPage(),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                  child: const Text(
                    'Go to Top Page',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
          ),
        ),
      ),
    );
  }
}
