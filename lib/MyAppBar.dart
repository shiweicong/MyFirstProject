import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar(this.title);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      // Row 是水平方向的线性布局（linear layout）
      child: new Row(
        //列表项的类型是 <Widget>
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
//            tooltip: 'Navigation menu',
            tooltip:'Navigation menu',
//            icon :
            onPressed: null, // null 会禁用 button
          ),
          // Expanded expands its child to fill the available space.
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon:new Icon(Icons.search),
//            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
          new Image.asset(
            'images/loan_success_state_img.png', //图片的路径
            width: 600.0, //图片控件的宽度
            height: 240.0, //图片控件的高度
            fit: BoxFit.cover, //告诉引用图片的控件，图像应尽可能小，但覆盖整个控件。
          ),
        ],
      ),
    );
  }


  Widget myHand (){
    return new GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: new Container(

        width: 23.0,
        height: 36.0,
//        padding:const EdgeInsets.all(9.0),
        padding: const EdgeInsets.all(8.0),

        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],

        ),
        child: new Center(
          child: new Text('Engage'),
        ),
      ),
    );
  }
}
