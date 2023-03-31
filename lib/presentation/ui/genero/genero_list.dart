import 'package:flutter/material.dart';
import 'package:jxcontrollertest/controllers/genero_controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxpresentation/jxpresentation.dart';

class GeneroList extends StatefulWidget {
  const GeneroList({Key? key}) : super(key: key);

  @override
  State<GeneroList> createState() => _GeneroListState();
}

class _GeneroListState extends State<GeneroList> {
  final controller = GeneroController(ApiClient.client());

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
        title: const Text('Gênero'),
      ),
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return UpdateScreen(
                controller: controller,
                state: controller.state,
                padding: 'id',
                title: 'nome',
                subtitle: '',
                trailing: '');
          }),
    );
  }
}
