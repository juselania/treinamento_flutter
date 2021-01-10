import 'package:flutter/material.dart';
import 'package:treinamento_flutter/contato.dart';
import 'package:treinamento_flutter/contatoservice.dart';
import 'package:treinamento_flutter/home.dart';

class ContactModal extends StatelessWidget {
  List<Contato> user = [];
  int index;
  ContactModal(this.user, this.index);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: Text(user[index].nome, style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 110,
              ),
              Si
            ],
          ),
        ),
      ),
    ));
  }
}
