import 'package:jxcontroller/jxcontroller.dart';

class CidadeModel extends JxModel {
  //
  static final List<JxField> staticFields = [
    JxField('id', 'id', 1, FieldType.ftString),
    JxField('nome', 'nome', 'Cidade ficticia', FieldType.ftString),
    JxField('estadoId', 'estado_id', 1, FieldType.ftInteger),
    JxField('nomeEstado', 'nome_estado', 'Umazona', FieldType.ftString),
    JxField('ibge', 'ibge', 123, FieldType.ftInteger),
    JxField('codTom', 'cod_tom', 123, FieldType.ftInteger),
    JxField('createdAt', 'created_at', DateTime.now(), FieldType.ftDateTime),
    JxField('updatedAt', 'updated_at', DateTime.now(), FieldType.ftDateTime),
  ];

  late List<JxField>? _fields;

  CidadeModel([this._fields]) : super(_fields ?? staticFields) {
    _fields ??= staticFields;
  }

  static CidadeModel fake() => CidadeModel(staticFields);

  factory CidadeModel.fromJson(Map<String, dynamic> json) =>
      CidadeModel(json2Field(json));

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
