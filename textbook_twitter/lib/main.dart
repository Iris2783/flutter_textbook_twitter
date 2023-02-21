import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //ScaffoldウィジェットのappBarプロパティにAppBarウィジェットを与えている。
        appBar: AppBar(
          title: const Text(
            //AppBarウィジェットのtitleプロパティにTextウィジェットを与えている。
            'ひかる＠Flutter大学',
            style: TextStyle(
              //TextウィジェットのstyleプロパティにTextStyleウィジェットを与えている。
              fontWeight: FontWeight.bold, //fontWeightプロパティ
              fontSize: 16, //fontSizeプロパティ
              // color: Colors.green,
            ),
          ),
        ),
        body: SingleChildScrollView(
          //SingleChildScrollViewウィジェットでラップすることでスクロールをすることができる。
          child: Column(
            children: const [
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      //PaddingウィジェットでColumnウィジェットの余白を調整する
      padding: const EdgeInsets.all(8.0), //Paddingウィジェットにpaddingプロパティを与えている　EdgeInsetsクラスをallにすることで全方位に余白を与えている　allはプロパティ。
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, //Rowウィジェット内のウィジェットを上揃えにする。　startはColumnで使えば左揃え、Rowで使えば上揃えになる。
        children: [
          const CircleAvatar(
            //ユーザーアイコンを追加する
            backgroundImage: NetworkImage('https://i.gzn.jp/img/2018/01/15/google-gorilla-ban/00.jpg'), //ネットから画像イメージを引用してきている　backgroundImageプロパティにNetworkImageウィジェットを与えている。
          ),
          const SizedBox(width: 8),
          Column(
            //childrenプロパティにいれたウィジェットを縦に並べることができる
            crossAxisAlignment: CrossAxisAlignment.start, //ColumnウィジェットのcrossAxisAlignmentプロパティでColumn内のウィジェットを左揃えにする　CrossAxisAlignmentはクラスで、startはプロパティ。
            children: [
              Row(
                //childrenプロパティに入れたウィジェットを横に並べることができる
                //bodyプロパティにRowウィジェットを与えている。
                children: const [
                  Text('ひかる@Flutter大学'), //childrenプロパティにTextウィジェットを与えている。
                  SizedBox(width: 8), //SizedBoxウィジェットにwidthプロパティを与えて横に隙間を作っている
                  Text('2023/2/21'), //childrenプロパティにTextウィジェットを与えている。
                ],
              ),
              const SizedBox(height: 4), //SizedBoxウィジェットにheightプロパティを与えて縦に隙間を作っている
              const Text('最高でした'),
              IconButton(
                //childrenプロパティにIconButtonウィジェットを与えている。
                onPressed: () {}, //()には引数を入れる。例えば(関数の型 変数名)を入れることでその関数に対して何の値を入れたいのかを指定することができる。{}には関数が実行された時の処理を書いておく。onPressedは関数型プロパティ。
                icon: const Icon(Icons.accessibility_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
