import 'package:jxcontroller/jxcontroller.dart';

class DcbModel extends JxModel {

static final List<JxField> staticFields = [
	JxField('id', 'dcb', 0, FieldType.ftInteger),
	JxField('insumo', 'insumo', "", FieldType.ftString),
	JxField('cas', 'cas', "", FieldType.ftString),
	JxField('classificacao', 'classificacao', "", FieldType.ftString),
	JxField('historico', 'historico', "", FieldType.ftString),
  ];

  late List<JxField>? _fields;

DcbModel([this._fields]) : super(_fields ?? staticFields) {
_fields ??= staticFields;}

static DcbModel fake() => DcbModel(staticFields);

factory DcbModel.fromJson(Map<String, dynamic> json) => DcbModel(json2Field(json));

static List<JxField> json2Field(Map<String, dynamic> json) {
  final list = <JxField>[];
  for (var e in staticFields) {
    e.value = (e.type == FieldType.ftDate || e.type == FieldType.ftDateTime)
        ? DateTime.parse(json[e.jsonName])
        : json[e.jsonName];
    list.add(JxField.from(e)); }

   return list;
 }
 }
