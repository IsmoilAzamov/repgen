import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{package_name}}/core/constants/urls.dart';
import 'package:{{package_name}}/{{package_name}}/domain/entities/{{entity_name.snakeCase()}}/{{entity_name.snakeCase()}}_entity.dart';

part '{{entity_name.snakeCase()}}_api_service.g.dart';

@RestApi(baseUrl: DOMAIN)
abstract class {{entity_name.pascalCase()}}ApiService {
factory {{entity_name.pascalCase()}}ApiService(Dio dio, {String baseUrl}) = _{{entity_name.pascalCase()}}ApiService;

@POST('/api/{{entity_name.pascalCase()}}/GetList')
Future<HttpResponse<List<{{entity_name.pascalCase()}}Entity>>> getList();

{{#has_get_by_id}}
@GET('/api/{{entity_name.pascalCase()}}/GetById/{id}')
Future<HttpResponse<{{entity_name.pascalCase()}}Entity>> getById(@Path('id') int id);
{{/has_get_by_id}}

{{#has_create}}
@POST('/api/{{entity_name.pascalCase()}}/Create')
Future<HttpResponse<{{entity_name.pascalCase()}}Entity>> create(@Body() {{entity_name.pascalCase()}}Entity entity);
{{/has_create}}

{{#has_update}}
@PUT('/api/{{entity_name.pascalCase()}}/Update')
Future<HttpResponse<{{entity_name.pascalCase()}}Entity>> update(@Body() {{entity_name.pascalCase()}}Entity entity);
{{/has_update}}

{{#has_delete}}
@DELETE('/api/{{entity_name.pascalCase()}}/Delete/{id}')
Future<HttpResponse<bool>> delete(@Path('id') int id);
{{/has_delete}}

{{#has_search}}
@GET('/api/{{entity_name.pascalCase()}}/Search')
Future<HttpResponse<List<{{entity_name.pascalCase()}}Entity>>> search(@Query('query') String query);
{{/has_search}}
}