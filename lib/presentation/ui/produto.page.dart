//readonly=false
import 'package:flutter/material.dart';
import 'package:jxcontrollertest/controllers/produto.controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxpresentation/jxpresentation.dart';

class ProdutoPage extends StatefulWidget {
  const ProdutoPage({Key? key}) : super(key: key);
  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  final controller = ProdutoController(ApiClient.client());
  @override
  void initState() {
    controller.refresh();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(JxIcon.doc_new))
        ],
        title: const Text('Lista Produto'),
      ),
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return UpdateScreen(
              controller: controller,
              state: controller.state,
              padding: 'id',
              title: 'nome',
              subtitle: 'codigoBarras',
              trailing: 'fabricante',
              showButton: true,
            );
          }),
    );
  }
}
