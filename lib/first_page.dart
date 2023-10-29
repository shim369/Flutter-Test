import 'package:flutter/material.dart';
import 'package:ftest2/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  String nameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Test Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown,
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
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/sample.jpg'),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                    onChanged: (text) {
                      setState(() {
                        nameText = text;
                      });
                    },
                  ),
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
                      'Set name',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(nameText),
                      ),
                    );
                  },
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
                SizedBox(
                  height: 200,
                  child: ListYtPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  ListPage({super.key});
  final List<String> entries = <String>['8才', '韓国生まれ', 'メス'];
  final List<int> colorCodes = <int>[600, 400, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text(entries[index])),
          );
        },
    );
  }
}

class ListYtPage extends StatelessWidget {
  ListYtPage({super.key});
  final List<String> entries3 = <String>[
    'https://i.ytimg.com/vi/hixAq2qIED4/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLAyaIKFmIfn_lkyAwNWPL4a-cmv-A',
    'https://i.ytimg.com/vi/npP0rvvxC3I/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLAAyVzP7eGdUIU3Fq2w9Y8-6VFsvA',
    'https://i.ytimg.com/vi/KXoazkR4gNQ/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLDESKtYhWMAv0tgKxCN4lEQpWOsAw',
    'https://i.ytimg.com/vi/EpsDs2MntI8/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLCG60VZNE5JLSuB3FUEvWHj86rdIg',
  ];
  final List<String> entries2 = <String>[
    'ワンちゃんのトリミング動画を真似すると起きること',
    '野良の子猫ばかりを可愛がってたらワンちゃんが大変なことになりました！',
    '偏食家のワンちゃんが食いしん坊ワンちゃんと8年を一緒に暮らしたら起こること',
    '怠け者のワンちゃんを水の中に入れると起こること',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Youtube',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries2.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 80,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                      Image.network(
                          entries3[index]
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                            entries2[index]
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
