import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          IconBadage(Icons.pool),
          IconBadage(Icons.beach_access,size:64.0),
          IconBadage(Icons.airplanemode_active)
        ],
      ),
    );
  }
}

class IconBadage extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadage(this.icon,{
    this.size = 30.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,size: size,color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3,54,255,1.0),
    );
  }

}
