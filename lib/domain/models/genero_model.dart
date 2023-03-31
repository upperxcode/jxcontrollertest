import 'package:jxcontroller/jxcontroller.dart';

class GeneroModel extends JxModel {
  //
  static final List<JxField> staticFields = [
    JxField('id', 'id', 1, FieldType.ftString),
    JxField('nome', 'nome', 'Hétero', FieldType.ftString),
    JxField('createdAt', 'created_at', DateTime.parse('2022-01-01'),
        FieldType.ftDateTime),
    JxField('updatedAt', 'updated_at', DateTime.parse('2022-10-01'),
        FieldType.ftDateTime),
  ];

  late List<JxField>? _fields;

  GeneroModel([this._fields]) : super(_fields ?? staticFields) {
    _fields ??= staticFields;
  }

  static GeneroModel fake() => GeneroModel(staticFields);

  factory GeneroModel.fromJson(Map<String, dynamic> json) =>
      GeneroModel(json2Field(json));

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
