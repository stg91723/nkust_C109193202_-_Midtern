import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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

    final player=AudioPlayer();
    player.play(AssetSource("assets/Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Text("Who am I",
                              style: TextStyle(fontSize:24,
                                               fontWeight:FontWeight.bold,)),
          ),
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

           Container(
             color: Colors.redAccent,
             child: Image.asset('images/f1.jpg'),
             height: 200,
             width: 200,
           ),
          SizedBox(height: 30,),

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
