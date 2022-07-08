import 'package:fiap_mobile_trabalho/domain/entities/organization_entity.dart';

abstract class FetchOrganization {
  Future<List<OrganizationEntity>> execute();
}