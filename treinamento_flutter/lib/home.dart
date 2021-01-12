import 'package:flutter/material.dart';
import 'package:treinamento_flutter/contact.dart';

import 'package:treinamento_flutter/contatoservice.dart';
import 'package:treinamento_flutter/main.dart';


import 'models/contato.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  List<Contato> user = [];

  ContatoService contatoService = ContatoService();

  @override
  void initState() {
    super.initState();
    user = contatoService.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: user.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactModal(user, index)));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey[400],
                ),
                title: Text(user[index].nome),
                subtitle: Text(user[index].telefone),
              ),
            );
          },
        ),
      ),
    );
  }
}
