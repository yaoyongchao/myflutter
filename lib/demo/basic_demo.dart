import 'package:flutter/material.dart';
class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 26.0,
  );
  final String _author = '李白';
  final String _title = '将近酒';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color:  Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.white),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 2.0,
                  style: BorderStyle.solid,
              )
            ),
          )
        ],
      ),
    );
  }



//  Text(
//  '《 $_title 》—— $_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。',
//  textAlign: TextAlign.left,
//  style: _textStyle,
//  maxLines: 3,
//  overflow: TextOverflow.ellipsis,
//  );

}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: 'ninghao',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                )
            )
          ]
      ),

    );
  }

}