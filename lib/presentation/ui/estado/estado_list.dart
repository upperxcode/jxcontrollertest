import 'package:flutter/material.dart';
import 'package:jxcontrollertest/controllers/estado_controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxpresentation/jxpresentation.dart';

class EstadoPage extends StatefulWidget {
  const EstadoPage({Key? key}) : super(key: key);

  @override
  State<EstadoPage> createState() => _EstadoPageState();
}

class _EstadoPageState extends State<EstadoPage> {
  final controller = EstadoController(ApiClient.client());

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
                subtitle: 'uf',
                trailing: 'ibge');
          }),
    );
  }
}
