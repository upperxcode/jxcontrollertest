import 'package:jxcontroller/jxcontroller.dart';

class EmpresaModel extends JxModel {

static final List<JxField> staticFields = [
	JxField('id', 'id', 0, FieldType.ftInteger),
	JxField('createdAt', 'created_at', "", FieldType.ftString),
	JxField('razaoSocial', 'razao_social', "", FieldType.ftString),
	JxField('nomeFantasia', 'nome_fantasia', "", FieldType.ftString),
	JxField('endereco', 'endereco', "", FieldType.ftString),
	JxField('bairro', 'bairro', "", FieldType.ftString),
	JxField('cidade', 'cidade', "", FieldType.ftString),
	JxField('cep', 'cep', "", FieldType.ftString),
	JxField('cnpj', 'cnpj', "", FieldType.ftString),
	JxField('telefone', 'telefone', "", FieldType.ftString),
	JxField('responsavelEmail', 'responsavel_email', "", FieldType.ftString),
	JxField('responsavelCpf', 'responsavel_cpf', "", FieldType.ftString),
	JxField('responsavelSenha', 'responsavel_senha', "", FieldType.ftString),
	JxField('usuarioId', 'usuario_id', "", FieldType.ftString),
  ];

  late List<JxField>? _fields;

EmpresaModel([this._fields]) : super(_fields ?? staticFields) {
_fields ??= staticFields;}

static EmpresaModel fake() => EmpresaModel(staticFields);

factory EmpresaModel.fromJson(Map<String, dynamic> json) => EmpresaModel(json2Field(json));

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
