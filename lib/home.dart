import 'package:flutter/material.dart';
import 'package:treinamento_flutter/contactdetails.dart';
import 'package:treinamento_flutter/contatoservice.dart';
import 'package:treinamento_flutter/service_locator.dart';
import 'models/contato.dart';

//ContatoService contatoService = GetIt<ContatoService>();

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var servico = servicelocator<ContatoService>();
  List<Contato> user = [];

  @override
  void initState() {
    super.initState();
    user = servico.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: user.length,
          itemBuilder: (context, posicao) {
            var contato = user[posicao];
            return Column(
              children: [
                Divider(
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactModal(contato)));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        user[posicao].inicial,
                      ),
                      radius: 24,
                      // backgroundColor: Colors.grey[400],
                    ),
                    title: Text(contato.nome),
                    subtitle: Text(contato.telefone),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
