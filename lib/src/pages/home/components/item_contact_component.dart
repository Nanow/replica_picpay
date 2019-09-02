import 'package:flutter/material.dart';
import 'package:picpay_copy/src/shared/models/users.dart';

class ItemContactComponent extends StatelessWidget {
  final User user;

  const ItemContactComponent({Key key, this.user}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(64),
            child: Image.network(
              user.img,
              fit: BoxFit.fitHeight,
              height: 62,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(user.username, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(user.username,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
