

import 'package:fiap_mobile_trabalho/data/usecases/organization/remote_fetch_organization.dart';
import 'package:fiap_mobile_trabalho/domain/usecases/organization/fetch_organization.dart';
import 'package:fiap_mobile_trabalho/main/factories/infra/http_adapter_factory.dart';

FetchOrganization makeRemoteFetchOrganization() => RemoteFetchOrganization(
  httpClient: makeHttpAdapter(),
);