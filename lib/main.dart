/**
 * 文本整个的注释
 *
 */
/// 对于函数 类的注释

// 函数内部小东西的注释
/// material 用于安卓！
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// widget
///iOS 控件
///Vue 组件
///小部件
///flutter 万事万物都是widget
/// 2333

///多行实现
//void main(){
//  runApp(firstApp()
//  );
//}

///单行实现
main() => runApp(firstApp());


class firstApp extends StatelessWidget{
  ///build很重要 必须写
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'切换的时候才能看到我哟',
      home:Scaffold(
          appBar: AppBar(
            title: Center(
              child:Text(
                "I am the bar at the beginning.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.amberAccent,
                ),
              ),
            ),
          ),
          body: RyanFirstApp()
      ),   //脚手架！

    );
  }

}

class RyanFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(20),
        child:ListView(
          children: <Widget>[
            productionItem("I need a doc","I need a doc to give me back to life.","http://5b0988e595225.cdn.sohucs.com/images/20170925/da432c8e13ec45c7960f4f065c91d769.jpeg"),
            productionItem("I like stars","I want stars","http://b-ssl.duitang.com/uploads/item/201409/24/20140924224306_wWnRh.jpeg"),
            productionItem("So there I am","Watch out!","http://m.51wendang.com/pic/b8961d94fc4bd0b2a9ba02e2/1-810-jpg_6-1080-0-0-1080.jpg"),
        ],
        )
    );
  }
}

class productionItem extends StatelessWidget{

  final String text1;
  final String text2;
  final String srcI;

  productionItem(this.text1,this.text2,this.srcI);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
//        border: Border.all()
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Text(text1),
          Text(text2),
          Image.network(srcI),
        ],

      ),
    );
  }


}