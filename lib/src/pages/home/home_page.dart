import 'package:flutter/material.dart';
import 'package:picpay_copy/src/pages/home/components/item_contact_component.dart';
import 'package:picpay_copy/src/shared/models/users.dart';
import 'package:picpay_copy/src/shared/repositories/user_repository.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final userRepository = UserRepository();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Contatos',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              textAlign: TextAlign.center,
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'A quem deseja pagar?',
                prefixIcon: Icon(Icons.search),
                focusColor: Colors.greenAccent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<User>>(
                future: userRepository.fetchUsers(),
                builder: (context, snapshot) {
                  if(!snapshot.hasData){
                    return Center(child: CircularProgressIndicator(),);
                  } 
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index){
                      return ItemContactComponent(user: snapshot.data[index]);
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
