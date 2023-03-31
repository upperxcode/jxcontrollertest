import 'package:flutter/material.dart';
import 'package:jxcontrollertest/controllers/dcb.controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxpresentation/jxpresentation.dart';

class DcbPage extends StatefulWidget {
  const DcbPage({Key? key}) : super(key: key);
  @override
  State<DcbPage> createState() => _DcbPageState();
}

class _DcbPageState extends State<DcbPage> {
  final controller = DcbController(ApiClient.client());
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
        title: const Text('Lista DCB'),
      ),
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return UpdateScreen(
              controller: controller,
              state: controller.state,
              padding: 'idField',
              title: 'nameField',
              subtitle: 'otherField',
              trailing: 'otherField',
            );
          }),
    );
  }
}
