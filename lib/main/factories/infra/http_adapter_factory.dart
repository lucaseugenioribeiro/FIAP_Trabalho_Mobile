import 'package:fiap_mobile_trabalho/infra/http/http_adapter.dart';
import 'package:http/http.dart';

HttpAdapter makeHttpAdapter() => HttpAdapter(client: Client());