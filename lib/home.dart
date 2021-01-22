import 'package:flutter/material.dart';
import 'package:treinamento_flutter/contact.dart';
import 'package:treinamento_flutter/contatoservice.dart';
import 'package:treinamento_flutter/service_locator.dart';
import 'models/contato.dart';

//ContatoService contatoService = GetIt<ContatoService>();

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var produto = servicelocator<Contato>();
  List<Contato> user = [];
  ContatoService contatoService = ContatoService();
  //var serviceLocator = GetIt.I();
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
            Divider(
              color: Colors.black,
            );
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactModal(user, index)));
              },
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(
                    user[index].inicial,
                  ),
                  radius: 24,
                  // backgroundColor: Colors.grey[400],
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