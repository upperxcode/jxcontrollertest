//readonly=false
import 'package:flutter/material.dart';
import 'package:jxcontrollertest/controllers/empresa.controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxpresentation/jxpresentation.dart';

class EmpresaPage extends StatefulWidget {
  const EmpresaPage({Key? key}) : super(key: key);
  @override
  State<EmpresaPage> createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
  final controller = EmpresaController(ApiClient.client());
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
    return UpdateScreen(
      controller: controller,
      state: controller.state,
      padding: 'id',
      title: 'Lista Empresa',
      showButton: true,
      lista: const {
        "razaoSocial": "Nome",
        "telefone": "Telefone",
        "endereco": "Endereço",
        "bairro": "Bairro",
        "cidade": "Cidade",
        "cep": "Cep",
        "responsavelEmail": "e-mail do responsável",
      },
      frameType: FrameType.ftTable,
    );
  }
}
