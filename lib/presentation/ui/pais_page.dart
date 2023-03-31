import 'package:flutter/material.dart';
import 'package:jxcontrollertest/controllers/pais_controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxpresentation/jxpresentation.dart';

class PaisPage extends StatefulWidget {
  const PaisPage({Key? key}) : super(key: key);

  @override
  State<PaisPage> createState() => _PaisPageState();
}

class _PaisPageState extends State<PaisPage> {
  final controller = PaisController(ApiClient.client());

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
          IconButton(
              onPressed: () => {controller.refresh()},
              icon: const Icon(JxIcon.cancel)),
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
                subtitle: 'nomePt',
                trailing: 'bacen');
          }),
    );
  }
}
