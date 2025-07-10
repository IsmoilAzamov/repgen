import 'package:{{package_name}}/core/resources/datastate.dart';
import 'package:{{package_name}}/{{package_name}}/domain/entities/{{entity_name.snakeCase()}}/{{entity_name.snakeCase()}}_entity.dart';
import 'package:{{package_name}}/{{package_name}}/data/utils/error_handler/error_handler.dart';

import 'package:{{package_name}}/{{package_name}}/data/remote/{{entity_name.snakeCase()}}_api_service.dart';
import 'package:{{package_name}}/{{package_name}}/domain/repositories/{{entity_name.snakeCase()}}_repository.dart';

class {{entity_name.pascalCase()}}RepositoryImpl implements {{entity_name.pascalCase()}}Repository {
final {{entity_name.pascalCase()}}ApiService _{{entity_name.camelCase()}}ApiService;

{{entity_name.pascalCase()}}RepositoryImpl(this._{{entity_name.camelCase()}}ApiService);

@override
Future<DataState<List<{{entity_name.pascalCase()}}Entity>>> getList() =>
getCheckedResponse(() => _{{entity_name.camelCase()}}ApiService.getList());
{{#has_get_by_id}}
@override
Future<DataState<{{entity_name.pascalCase()}}Entity>> getById(int id) =>
getCheckedResponse(() => _{{entity_name.camelCase()}}ApiService.getById(id));
{{/has_get_by_id}}
{{#has_create}}
@override
Future<DataState<{{entity_name.pascalCase()}}Entity>> create({{entity_name.pascalCase()}}Entity entity) =>
getCheckedResponse(() => _{{entity_name.camelCase()}}ApiService.create(entity));
{{/has_create}}
{{#has_update}}
@override
Future<DataState<{{entity_name.pascalCase()}}Entity>> update({{entity_name.pascalCase()}}Entity entity) =>
getCheckedResponse(() => _{{entity_name.camelCase()}}ApiService.update(entity));
{{/has_update}}
{{#has_delete}}
@override
Future<DataState<bool>> delete(int id) =>
getCheckedResponse(() => _{{entity_name.camelCase()}}ApiService.delete(id));
{{/has_delete}}
{{#has_search}}
@override
Future<DataState<List<{{entity_name.pascalCase()}}Entity>>> search(String query) =>
getCheckedResponse(() => _{{entity_name.camelCase()}}ApiService.search(query));
{{/has_search}}
}