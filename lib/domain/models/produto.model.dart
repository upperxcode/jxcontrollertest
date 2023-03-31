import 'package:jxcontroller/jxcontroller.dart';

class ProdutoModel extends JxModel {
  static final List<JxField> staticFields = [
    JxField('id', 'id', 0, FieldType.ftInteger),
    JxField('createdAt', 'created_at', "", FieldType.ftString),
    JxField('nome', 'nome', "", FieldType.ftString),
    JxField('codigoBarras', 'codigo_barras', "", FieldType.ftString),
    JxField('fabricante', 'fabricante', "", FieldType.ftString),
    JxField('dcb', 'dcb', "", FieldType.ftString),
    JxField('tipo', 'tipo', "", FieldType.ftString),
    JxField('grupoTerapeutico', 'grupo_terapeutico', "", FieldType.ftString),
    JxField('registroMs', 'registro_ms', "", FieldType.ftString),
    JxField('principioAtivo', 'principio_ativo', "", FieldType.ftString),
    JxField('apresentacao', 'apresentacao', "", FieldType.ftString),
    JxField('ativo', 'ativo', 0, FieldType.ftInteger),
  ];

  late List<JxField>? _fields;

  ProdutoModel([this._fields]) : super(_fields ?? staticFields) {
    _fields ??= staticFields;
  }

  static ProdutoModel fake() => ProdutoModel(staticFields);

  factory ProdutoModel.fromJson(Map<String, dynamic> json) =>
      ProdutoModel(json2Field(json));

  static List<JxField> json2Field(Map<String, dynamic> json) {
    final list = <JxField>[];
    for (var e in staticFields) {
      e.value = (e.type == FieldType.ftDate || e.type == FieldType.ftDateTime)
          ? DateTime.parse(json[e.jsonName])
          : json[e.jsonName];
      list.add(JxField.from(e));
    }

    return list;
  }
}
