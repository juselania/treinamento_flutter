import 'package:flutter/material.dart';
import 'models/contato.dart';
import 'package:intl/intl.dart';

class ContactModal extends StatelessWidget {
  final Contato user;
  
  ContactModal(this.user);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: Text(user.nome, style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 111,
              ),
              SizedBox(
                height: 20,
              ),
              Text(user.nome, style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.99,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  child: Column(
                    children: [
                      Container(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text('Estado | Mobile'),
                                subtitle: Text(user.telefone),
                              ),
                              ListTile(
                                title: Text('E-mail'),
                                subtitle: Text(user.email),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.phone),
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.email), onPressed: () {})
                                ],
                              ),
                              Divider(
                                thickness: 1.2,
                              ),
                              ListTile(
                                title: Text('Nascimento'),
                                subtitle: Text(DateFormat('d MM y')
                                    .format(user.nascimento)),
                              ),
                              ListTile(
                                title: Text('Peso'),
                                subtitle:
                                    Text(user.peso.toString() + ' Kg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
