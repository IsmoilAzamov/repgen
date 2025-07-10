import 'package:{{package_name}}/core/resources/datastate.dart';
import 'package:{{package_name}}/{{package_name}}/domain/entities/{{entity_name.snakeCase()}}/{{entity_name.snakeCase()}}_entity.dart';


abstract class {{entity_name.pascalCase()}}Repository {
Future<DataState<List<{{entity_name.pascalCase()}}Entity>>> getList();

{{#has_get_by_id}}
Future<DataState<{{entity_name.pascalCase()}}Entity>> getById(int id);
{{/has_get_by_id}}
{{#has_create}}
Future<DataState<{{entity_name.pascalCase()}}Entity>> create({{entity_name.pascalCase()}}Entity entity);
{{/has_create}}
{{#has_update}}
Future<DataState<{{entity_name.pascalCase()}}Entity>> update({{entity_name.pascalCase()}}Entity entity);
{{/has_update}}
{{#has_delete}}
Future<DataState<bool>> delete(int id);
{{/has_delete}}
{{#has_search}}
Future<DataState<List<{{entity_name.pascalCase()}}Entity>>> search(String query);
{{/has_search}}
}