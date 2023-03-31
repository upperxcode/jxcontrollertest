import 'package:flutter/material.dart';
import 'package:jxcontrollertest/controllers/cidade_controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxpresentation/jxpresentation.dart';

class CidadePage extends StatefulWidget {
  const CidadePage({Key? key}) : super(key: key);

  @override
  State<CidadePage> createState() => _CidadePageState();
}

class _CidadePageState extends State<CidadePage> {
  final controller = CidadeController(ApiClient.client());

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
        title: const Text('Países'),
      ),
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return UpdateScreen(
                controller: controller,
                state: controller.state,
                padding: 'id',
                title: 'nome',
                subtitle: 'nome_estado',
                trailing: 'ibge');
          }),
    );
  }
}
