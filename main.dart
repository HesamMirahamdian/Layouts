import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


void main() {
  runApp(MyApp());
  debugPaintSizeEnabled = false;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout',
      home: buildHomePage('راویولی اسفناج'),
    );
  }

  Widget buildHomePage(String title) {
    final titleText = Container(
      padding: EdgeInsets.all(20),
      child: Text('راویولی اسفناج',
      style: TextStyle(
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        fontSize: 20,
      ),
      ),
    );

    final subTitle = Text(
      'یک غذای بسیار لذیذ برای تمامی سلایق',
      textAlign: TextAlign.center,
      style:TextStyle(
        fontFamily: 'Georgia',
        fontSize: 14,
      ),
    );

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color:Colors.green[500]),
        Icon(Icons.star, color:Colors.green[500]),
        Icon(Icons.star, color:Colors.green[500]),
        Icon(Icons.star, color:Colors.black),
        Icon(Icons.star, color:Colors.black),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text('170 بازدید',
          style: TextStyle(
            color:Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize:12,
          ),),
        ],
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      fontSize: 16,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                Text(':آماده سازی'),
                Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                Text(':پخت'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                Text(':برای'),
                Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn = Expanded(
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

  final mainimg =Expanded(child:
  Image.network(
    'http://uupload.ir/files/i8rm_rfo-1400x919-ricotta-pea-and-mint-ravioli-da65f82b-a615-406a-ab7a-dff88c648a9e-0-1400x919.jpg'
  ,fit: BoxFit.cover,
  alignment: Alignment.center,));
   
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title:Text(title),
    ),

    body: Center(
      child:Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        height: 600,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 440,
                child: leftColumn,
              ),
              mainimg,
            ],
          ),
        ),
      ),
    ),
  );
  }
}







