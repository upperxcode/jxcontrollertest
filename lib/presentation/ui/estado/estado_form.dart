import 'package:flutter/material.dart';
import 'package:jxcontroller/jxcontroller.dart';
import 'package:jxcontrollertest/controllers/estado_controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxpresentation/jxpresentation.dart';

class MainScaffold extends StatefulWidget {
  final controller = AppController();
  MainScaffold({Key? key}) : super(key: key);

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
            value: widget.controller.darkMode,
            onChanged: ((value) => widget.controller.toggledarkMode()),
          ),
        ],
        elevation: 5,
      ),
      body: const EstadoForm(),
    );
  }
}

class EstadoForm extends StatelessWidget {
  const EstadoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final EstadoController controller = EstadoController(ApiClient.client());
    final formKey = GlobalKey<FormState>();

    return SingleChildScrollView(
      child: Card(
        color: Colors.white70,
        margin: const EdgeInsets.all(10),
        elevation: 5,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              JxFieldForm(controller.field('id')),
              if (width >= JxScreen.smallWidth) ...[
                JxRowForm(
                  children: [
                    JxFieldFormExp(controller.field('nome'), flex: 3),
                    JxFieldFormExp(controller.field('uf')),
                  ],
                )
              ] else ...[
                JxFieldForm(controller.field('nome')),
                JxFieldForm(controller.field('uf')),
              ],
              JxFieldForm(controller.field('paisId')),
              JxFieldForm(controller.field('ibge')),
              const SizedBox(height: 10.0),
              JxFormSubmitCancelButton(
                onSubmit: () => formKey.currentState!.validate(),
                onCancel: () => formKey.currentState!.reset(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
