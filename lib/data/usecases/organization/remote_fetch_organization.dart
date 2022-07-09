import 'dart:developer';

import 'package:fiap_mobile_trabalho/data/http/http_client.dart';
import 'package:fiap_mobile_trabalho/data/http/http_error.dart';
import 'package:fiap_mobile_trabalho/data/usecases/organization/models/organization_model.dart';
import 'package:fiap_mobile_trabalho/domain/entities/organization_entity.dart';
import 'package:fiap_mobile_trabalho/domain/usecases/organization/fetch_organization.dart';
import 'package:fiap_mobile_trabalho/domain/utils/domain_erro.dart';

class RemoteFetchOrganization extends FetchOrganization {
  
  RemoteFetchOrganization({
    required this.httpClient,
  });

  final HttpClient httpClient;

  @override
  Future<List<OrganizationEntity>> execute() async {
    try {
      
      final response = await httpClient.get(url: 'https://data.directory.openbankingbrasil.org.br/participants');
      //final response = await httpClient.get(url: 'https://demo7206081.mockable.io/movies');
      
      final organizationList = 
        response?.map<OrganizationEntity>((json) => OrganizationModel.fromJson(json).toEntity())
        .toList();

      return organizationList ?? [];
    } on HttpError catch (error) {
      if (error == HttpError.forbidden || error == HttpError.unauthorized) {
        throw DomainError.invalidCredentials;
      } else {
        throw DomainError.unexpected;
      }
    }
  }
}