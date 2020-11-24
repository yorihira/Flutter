import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       primaryColor: Colors.white,
      ),
      home:Scaffold(
    appBar: AppBar(
      centerTitle: false,
      leading: Icon(Icons.videocam),
    title: const Text(
        'ドラパルト',
      textAlign: TextAlign.start,
    ),
      actions: <Widget>[
        SizedBox(
          width: 44,
          child: FlatButton(
            child:Icon(Icons.search),
            onPressed: () {
              // todo
            },
          ),
        ),
        SizedBox(
          width: 44,
          child: FlatButton(
            child:Icon(Icons.more_vert),
            onPressed: () {
              // todo
            },
          ),
        ),
      ],
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.network(
                    'https://yt3.ggpht.com/a/AATXAJwxL8T1EGfMJ-Fpa4--2sEFUvBiftrPWwZ6oWxM=s144-c-k-c0xffffffff-no-rj-mo'
                  ),
                ),
                const SizedBox(
                  width: 8
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'ドラパ',
                    ),
                    FlatButton(
                      child:Row(
                        children: <Widget>[
                          Icon(
                              Icons.video_call,
                              color: Colors.red,
                          ),
                          Text('登録する'),
                        ],
                      ),
                      onPressed: () {
                        // todo
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () async {
                  //todo  画面遷
                  await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoDetailpage()
                    ),
                  );
                },
                contentPadding: EdgeInsets.all(8),
                leading: Image.network(
                    'https://yt3.ggpht.com/a/AATXAJxRgsg-Ed0hRIl94gHLT-k4YPjyP7CHTVEz-dWdDQ=s144-c-k-c0xffffffff-no-rj-mo',
                ),
                title: Column(
                  children: <Widget>[
                    Text(
                '【ドラパ】アプリ制作',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    Row(
                     children: <Widget> [
                     Text(
                    '267回再生',
                       style: TextStyle(
                         fontSize: 13
                       ),
                       ),
                     Text('５日前'),
                     ],
                    ),
                  ],
                ),
                trailing: Icon(Icons.more_vert),
              );
            },
          ),
        ),
        ],
      )
    ),
    ),
    );
  }
}





