import 'package:flutter/material.dart';

class FormularioTransferenciaPage extends StatelessWidget {
  const FormularioTransferenciaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final TextEditingController _controladorEditorConta = TextEditingController();
    final TextEditingController _controladorEditorValor = TextEditingController();


    return Scaffold(
        appBar: AppBar(
          title: Text("Criando Transferência"),
        ),
        body: Column(
          children: [
             CaixaDeTexto("Nümero da Conta", "0000000", _controladorEditorConta),
             CaixaDeTexto("Valor Depositado", "0000", _controladorEditorValor,
                icone: Icons.monetization_on),
            ElevatedButton(
              onPressed: () {
                debugPrint("${_controladorEditorConta.text}");
              },
              child: Text("ENVIAR"),
            )
          ],
        ));
  }
}

class CaixaDeTexto extends StatelessWidget {
  final String textoPrincipal;
  final String textoAviso;
  final IconData? icone;
  final TextEditingController controle;

  const CaixaDeTexto(this.textoPrincipal, this.textoAviso, this.controle,
      {this.icone, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: textoPrincipal,
          hintText: textoAviso,
        ),
        keyboardType: TextInputType.number,
        controller: controle,
      ),
    );
  }
}
