/**
 * 文本整个的注释
 *
 */
/// 对于函数 类的注释

// 函数内部小东西的注释
/// material 用于安卓！
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// widget
///iOS 控件
///Vue 组件
///小部件
///flutter 万事万物都是widget


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
                "I am the bar at first sight.",
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
    return Center(
      child: Text(
        "I am the body",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30,
          color: Colors.lightGreenAccent,
        ),
      ),
    );
  }
}