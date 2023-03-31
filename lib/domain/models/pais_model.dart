import 'package:jxcontroller/jxcontroller.dart';

class PaisModel extends JxModel {
  //
  static final List<JxField> staticFields = [
    JxField('id', 'id', 1, FieldType.ftString),
    JxField('nome', 'nome', 'Brazil zil', FieldType.ftString),
    JxField('nomePt', 'nome_pt', 'Brasil sil', FieldType.ftString),
    JxField('sigla', 'sigla', 'BR', FieldType.ftString),
    JxField('bacen', 'bacen', 123, FieldType.ftInteger),
    JxField('createdAt', 'created_at', DateTime.parse('2022-01-01'),
        FieldType.ftDateTime),
    JxField('updatedAt', 'updated_at', DateTime.parse('2022-10-01'),
        FieldType.ftDateTime),
  ];

  late List<JxField>? _fields;

  PaisModel([this._fields]) : super(_fields ?? staticFields) {
    _fields ??= staticFields;
  }

  static PaisModel fake() => PaisModel(staticFields);

  factory PaisModel.fromJson(Map<String, dynamic> json) =>
      PaisModel(json2Field(json));

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
