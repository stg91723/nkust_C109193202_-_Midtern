import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('nkust_C109193202_莊承翰_midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.indigo,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 17.0,
          iconSize: 40.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),
                                    label: 'Learning',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),
                                    label: 'Planning',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.accessibility),
                                    label: 'Other',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我叫做「莊承翰」，我出生在一個平凡，但充滿溫暖、'
      '和樂融融的小家庭裡。家中有父母及哥哥，父母親都是用民主的方式'
      '來管教我們，希望我們能夠獨立自主，主動學習，累積人生經驗，當'
      '我們累的時候，會適時的給予鼓勵和建議，他們只要求我們，第一是'
      '健康，第二是做出讓自己不後悔的決定。因為沒有了健康，就算有再'
      '多的才華、再大的抱負也無法發揮出來。又因為家境並不富有，導致'
      '我想要靠讀書來翻轉現在的環境，讀書是脫離貧窮最快的道路，幸好'
      '家裡也很支持我想要讀書的這個想法並資助我、給了我一個推力。';

  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('images/f1.jpg'),
            height: 2000,
            width: 200,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("近程目標",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 370,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('使我自己在理論和實務方面都能具備深且'
                        '廣的專業能力，並且加強自己的外語能力和各方面的知識。'),
                  ],
                ),
              ),
            ],),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("中程目標",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: 370,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('在四技畢業之後，還會繼續升學，並且進'
                        '入研究所就讀。若有機會我想出國深造，去看'
                        '看所謂的世界，我要盡自己的力量去完成我的夢想。'),
                  ],
                ),
              ),
            ],),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("遠程目標",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 370,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('在工作上發揮所學，並吸取工作及人生的經驗，'
                        '做一個優秀、專業的IT人。並且希望能培養第二專長，'
                        '因為多一項技能要能增強自己的內涵，同時也能接觸不同'
                        '於以往的領域，增廣見聞及人際關係，期待在未來國際化的'
                        '生活圈中，能發揮所長。'),
                  ],
                ),
              ),
            ],),
          ],
      ),);
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("大一時期",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 80,
                    width: 350,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 打好程式基礎'),
                      Text('2. 求每科高分'),
                      Text('3. 人際關係'),
                      Text('4. 參加社團'),
                    ],
                  ),
                ),
              ],),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("大二時期",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 80,
                width: 350,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 多多練習程式'),
                    Text('2. 打聽教授實驗室'),
                    Text('3. 人際關係'),
                    Text('4. 多聽一些講座'),
                  ],
                ),
              ),
            ],),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("大三時期",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 80,
                width: 350,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 做好專題'),
                    Text('2. 想清楚該不該考研'),
                    Text('3. 考取證照'),
                    Text('4. 精進自己'),
                  ],
                ),
              ),
            ],),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("大四時期",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 70,
                width: 350,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 校外實習'),
                    Text('2. 升學or就業'),
                    Text('3. 考取證照'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("求學經過",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 260,
                width: 370,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('小學時代的我很活潑好動，課業上表現並不是前段，但'
                        '課外表現都不錯，擔任過班長等幹部。畢業後進入一所'
                        '市立中學，讀書風氣不錯，我也因此而被帶動，使原本'
                        '好動的我變得較為文靜，不過在那裡我學會了許多應有'
                        '的禮節與待人處世的道理。學校在二年級的時候帶我們'
                        '去高職做職業試探，開發了我對一技之長的興趣。畢業'
                        '後果斷選擇技職學校就讀。進入高職的三年，修了大部'
                        '分的電腦方面的專業課程，獲益良多，生活也過得'
                        '很充實，也使我知道有關電腦領域的學問浩瀚無窮，而'
                        '且每天都不斷有新的東西或技術被發明，走在資訊科技'
                        '尖端的人，光只有學學校的課程是不夠的，這也就是我'
                        '非常想唸四技的原因。後來讀了大學，我便開始研究各'
                        '個方向出路，才知道每有一條路是輕鬆的，所以我便要'
                        '求自己穩扎穩打基礎使自己做好萬全準備迎接新事物'),
                  ],
                ),
              ),
            ],),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 310, 0),
            child: Text("社團活動",
                style: TextStyle(fontSize:18,
                  fontWeight:FontWeight.bold,)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 99,
                width: 370,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('在高職期間我參加的社團為「扶輪少年服務團」'
                        '校園周圍清掃垃圾，拜訪獨居老人，與其他院校的'
                        '外籍生進行交流活動，增加英文交流能力。'
                        '在大學期間我參加的是火舞藝術表演社，因為在高職的社團'
                        '為了晚會表演而學了一些基礎，後來對這項運動感興趣'
                        '於是大學選擇了相對應的社團。'),
                  ],
                ),
              ),
            ],),
          ],
      ),);
  }
}
