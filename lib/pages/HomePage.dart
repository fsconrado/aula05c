import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bank Transferências")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListaTrasnferencias(),
    );
  }
}

class ListaTrasnferencias extends StatelessWidget {
  const ListaTrasnferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(Transferencia(100.0,1111)),
        ItemTransferencia(Transferencia(200.0, 2222)),
        ItemTransferencia(Transferencia(400.0,3333)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.nConta.toString()),
        leading: const Icon(Icons.monetization_on),
      ),
    );
  }

}

class Transferencia {
  final double valor;
  final int nConta;

  const Transferencia(this.valor, this.nConta);
}
