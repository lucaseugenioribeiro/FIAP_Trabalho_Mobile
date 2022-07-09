
import 'package:fiap_mobile_trabalho/domain/entities/organization_entity.dart';

class OrganizationModel {
  
  OrganizationModel({
    required this.organisationName,
    required this.legalEntityName,
    required this.city,
  });

  String organisationName;
  String legalEntityName;
  String city;

  factory OrganizationModel.fromJson(Map json) => OrganizationModel(
    organisationName: json['OrganisationName'] as String,
    legalEntityName: json['LegalEntityName'] as String,
    city: json['City'] as String,
  );

  OrganizationEntity toEntity() => OrganizationEntity(
    organisationName: organisationName,
    legalEntityName: legalEntityName,
    city: city
  );
}