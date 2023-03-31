import 'package:jxcontroller/jxcontroller.dart';

class EstadoModel extends JxModel {
  //

  static final List<JxField> staticFields = [
    JxField('id', 'id', 1, FieldType.ftInteger, readOnly: true, notNull: false),
    JxField('nome', 'nome', 'Estados Unidos', FieldType.ftString, size: 60),
    JxField('uf', 'uf', 'EU', FieldType.ftString, size: 2),
    JxField('paisId', 'pais_id', '1', FieldType.ftInteger,
        placeholder: 'id do país, brasil = 1', displayName: 'Id do País'),
    JxField('ibge', 'ibge', 123, FieldType.ftInteger),
    JxField('createdAt', 'created_at', DateTime.parse('2022-01-01'),
        FieldType.ftDateTime),
    JxField('updatedAt', 'updated_at', DateTime.parse('2022-10-01'),
        FieldType.ftDateTime),
  ];

  late List<JxField>? _fields;

  EstadoModel([this._fields]) : super(_fields ?? staticFields) {
    _fields ??= staticFields;
  }

  static EstadoModel fake() => EstadoModel(staticFields);

  factory EstadoModel.fromJson(Map<String, dynamic> json) =>
      EstadoModel(json2Field(json));

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
