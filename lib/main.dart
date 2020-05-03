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
          body: Padding(
            padding: const EdgeInsets.all(20),
            child:LoginWidget(),
          )
      ),   //脚手架！

    );
  }

}

class LoginWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>LoginWidgetState();
  }

class LoginWidgetState extends State<LoginWidget>{
  GlobalKey<FormState> key= GlobalKey();
  String username;
  String userPassword;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            onSaved: (value)=> this.username = value,
            decoration: InputDecoration(
              icon: Icon(Icons.people,
//                color: Colors.blueGrey,
              ),
              labelText: "UserAlias",
//              labelStyle: (
//                  TextStyle(color: Colors.blueGrey)
//              ),
              focusColor: Colors.blue,
//              enabledBorder: ,
            ),
          ),
          TextFormField(

            onSaved: (value) =>this.userPassword = value,
            obscureText: true,
            decoration: InputDecoration(
//              filled: true,
//              isDense: true,
//              fillColor: Colors.lightGreenAccent,
//              fillColor 需要当filled：true才能用
//              border: InputBorder() ,
              icon: Icon(Icons.lock),
              labelText: "UserPassword",
              focusColor: Colors.blue,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 44,
            child:RaisedButton(
                child: Text("register",style: TextStyle(fontSize: 20, color: Colors.white),),
                color: Colors.deepPurpleAccent,
                onPressed: (){
                    key.currentState.save();
                    print("username: $username \n password: $userPassword");
                },
            ),
          ),

        ],

      ),

    );
  }


}