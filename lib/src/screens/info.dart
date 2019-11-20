import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class Info extends StatelessWidget {
  const Info();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'おさかな日和'
                      '\nCopyright (c) Future University Hakodate. All Rights Reserved.'
                      '\n\nおさかな日和に記載されている魚介類の情報, 画像, 料理レシピは下記のWebサイトよりご提供いただいたものです．'
                      '\nご提供いただいた情報の著作権・知識財産権は, すべて情報提供元に帰属します．'
                      '\n掲載情報の全部または一部については, 私的利用以外の目的で転載, 複製等することはできません．'
                      '\n\n・魚介類の情報'
                      '\n北海道庁水産林務部水産経営課 北海道おさかな図鑑：\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.pref.hokkaido.lg.jp/sr/ske/osazu/index.htm',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'http://www.pref.hokkaido.lg.jp/sr/ske/osazu/index.htm');
                    },
                ),
                TextSpan(
                  text: '\n\n・魚介類の画像\n地方独立行政法人北海道立総合研究機構：',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.hro.or.jp/',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('http://www.hro.or.jp/');
                    },
                ),
                TextSpan(
                  text: '\n\n・魚介類の料理レシピ\n北海道漁業協同組合連合会 :\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.gyoren.or.jp',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('http://www.gyoren.or.jp');
                    },
                ),
                TextSpan(
                  text: '\n北海道後志総合振興局：\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.shiribeshi.pref.hokkaido.lg.jp',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('http://www.shiribeshi.pref.hokkaido.lg.jp');
                    },
                ),
                TextSpan(
                  text: '\n北海道日高振興局：\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.hidaka.pref.hokkaido.lg.jp',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('http://www.hidaka.pref.hokkaido.lg.jp');
                    },
                ),
                TextSpan(
                  text: '\n北海道十勝総合振興局：\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.tokachi.pref.hokkaido.lg.jp',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('http://www.tokachi.pref.hokkaido.lg.jp');
                    },
                ),
                TextSpan(
                  text: '\n北海道胆振総合振興局 :\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.iburi.pref.hokkaido.lg.jp',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('http://www.iburi.pref.hokkaido.lg.jp');
                    },
                ),
                TextSpan(
                  text: '\n北海道留萌振興局：\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.rumoi.pref.hokkaido.lg.jp',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('http://www.rumoi.pref.hokkaido.lg.jp');
                    },
                ),
                TextSpan(
                  text: '\n北海道檜山振興局：\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text: 'http://www.hiyama.pref.hokkaido.lg.jp',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('http://www.hiyama.pref.hokkaido.lg.jp');
                    },
                ),
                TextSpan(
                  text: '\n\nーーーーーーーーーーーーーーーーーー\n'
                      '\n\n[ヘルプ]'
                      '\n■おさかな日和とは'
                      '\nおさかな日和は, 北海道の魚介類とその料理レシピを検索・閲覧できるアプリです．'
                      '\n本アプリを利用するときは必ずインターネットに接続された状態でご利用ください．'
                      '\n\n■アプリの使い方'
                      '\n魚介類の情報を見る'
                      '\n・お魚一覧画面：画面下にあるタブのお魚一覧をタップします．'
                      '\n表示された魚介類をタップするとその魚介類の情報を見ることができます．'
                      '\n画面上部の検索欄に魚介類の名前（もしくは地方名）を入力すると魚介類を検索できます．'
                      '\n検索欄の下の「ア~カ」などのインデックスをタップすると, 指定した範囲の魚介類のみ表示します．'
                      '\n\n料理レシピの情報を見る '
                      '\n・レシピ一覧画面：画面下にあるタブのレシピ一覧をタップします． 表示された料理レシピをタップするとその料理レシピの情報を見ることができます．'
                      '\n画面上部の検索欄に料理レシピ名を入力すると料理レシピを検索できます．'
                      '\n\n魚介類, 料理レシピを検索する '
                      '\n・検索画面：お魚一覧画面, レシピ一覧画面の画面右上にある「条件検索」をタップします．'
                      '\n産地, 食べごろなどの検索条件を指定して, 画面右上にある「この条件で検索」をタップすると魚介類, 料理レシピ��検索できます．'
                      '\n\n料理モードを使用する'
                      '\n・料理モード画面：レシピ一覧画面からレシピを選び, レシピ画面右上の「料理モード」ボタンをタップします．'
                      '\n料理の��工程ごとにレシピを見る事ができ, 画面に直接触れずに, iPhone上部に手をかざすだけで次の工程を見る事ができます．前の工程に戻りたい場合は手をiPhone上部に長くかざしてください．'
                      '\n文字が小さい，または大きくて見ずらい場合は2本指で画面をつまんだり広げたりすることで文字サイズを調整することができます．'
                      '\n手が汚れて大変な魚料理でもiPhoneを見ながら楽しく料理することができます．'
                      '\n\nブックマーク機能を利用する'
                      '\n・お気に入り画面：レシピ一覧画面からお気に入りにしたレシピを閲覧することができます．レシピはオフラインでも見ることができます．なお，レシピをお気に入り登録するにはレシピ一覧画面からお気に入りにしたいレシピを選び，右上の星のマークをタップしてください．'
                      '\nお気に入りを解除する場合は再度星のマークをタップしてください．'
                      '\n\n■独自に定義している用語について'
                      '\n・難易度'
                      '\n料理の難易度を表したものです．作り方の工程数で以下のように定義しています．'
                      '\n簡単 ：1~2\n普通 ：3~5\n難しい：6~'
                      '\n\n■料理レシピのカロリーについて'
                      '\n料理レシピのカロリーは文部科学省が提供している「日本食品標準成分表2015年版（七訂）」をもとに本アプリで見積もった概算値であり，'
                      '\n料理レシピに対する正確なカロリーを保証するものではありません．あくまで参考値としてご活用下さい．'
                      '\n\n日本食品標準成分表2015年版（七訂）\n',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                TextSpan(
                  text:
                      'http://www.mext.go.jp/a_menu/syokuhinseibun/1365297.htm',
                  style: TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'http://www.mext.go.jp/a_menu/syokuhinseibun/1365297.htm');
                    },
                ),
                const TextSpan(text: '\n\n')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
