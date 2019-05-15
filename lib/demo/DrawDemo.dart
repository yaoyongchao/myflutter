import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            '永超',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          accountEmail: Text('yaoyongchao3g@163.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=705545521,4148829032&fm=27&gp=0.jpg'),
          ),
          decoration: BoxDecoration(
            color: Colors.yellow[400],
            image: DecorationImage(
                image: NetworkImage(
                    'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3914146707,957268218&fm=26&gp=0.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6), BlendMode.srcOver)),
          ),
        ),
/*DrawerHeader(
                  child: Text("header".toUpperCase()),
                  decoration: BoxDecoration(
                    color: Colors.grey[100]
                  ),
                ),*/
        ListTile(
          title: Text(
            'Messages',
            textAlign: TextAlign.right,
          ),
          trailing: Icon(
            Icons.message,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text(
            'Favorite',
            textAlign: TextAlign.right,
          ),
          trailing: Icon(
            Icons.favorite,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text(
            'Settings',
            textAlign: TextAlign.right,
          ),
          trailing: Icon(
            Icons.message,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        )
      ],
    ));
  }
}
