
import 'package:fiap_mobile_trabalho/domain/entities/organization_entity.dart';

class OrganizationModel {
  
  OrganizationModel({
    required this.organisationId,
    required this.status,
    required this.oganisationName,
    required this.createdOn,
    required this.legalEntityName,
    required this.countryOfRegistration,
    required this.companyRegister,
    required this.tag,
    required this.size,
    required this.registrationNumber,
    required this.registrationId,
    required this.registeredName,
    required this.addressLine1,
    required this.addressLine2,
    required this.city,
    required this.postcode,
    required this.country,
    required this.parentOrganisationReference
  });

  String organisationId;
  String status;
  String oganisationName;
  String createdOn;
  String legalEntityName;
  String countryOfRegistration;
  String companyRegister;
  String tag;
  String size;
  String registrationNumber;
  String registrationId;
  String registeredName;
  String addressLine1;
  String addressLine2;
  String city;
  String postcode;
  String country;
  String parentOrganisationReference;

  factory OrganizationModel.fromJson(Map json) => OrganizationModel(
    organisationId: json['organisationId'],
    status: json['status'],
    oganisationName: json['oganisationName'],
    createdOn: json['createdOn'],
    legalEntityName: json['legalEntityName'],
    countryOfRegistration: json['countryOfRegistration'],
    companyRegister: json['companyRegister'],
    tag: json['tag'],
    size: json['size'],
    registrationNumber: json['registrationNumber'],
    registrationId: json['registrationId'],
    registeredName: json['registeredName'],
    addressLine1: json['addressLine1'],
    addressLine2: json['addressLine2'],
    city: json['city'],
    postcode: json['postcode'],
    country: json['country'],
    parentOrganisationReference: json['parentOrganisationReference'],
  );

  OrganizationEntity toEntity() => OrganizationEntity(
    organisationId: organisationId,
    status: status,
    oganisationName: oganisationName,
    createdOn: createdOn,
    legalEntityName: legalEntityName,
    countryOfRegistration: countryOfRegistration,
    companyRegister: companyRegister,
    tag: tag,
    size: size,
    registrationNumber: registrationNumber,
    registrationId: registrationId,
    registeredName: registeredName,
    addressLine1: addressLine1,
    addressLine2: addressLine2,
    city: city,
    postcode: postcode,
    country: country,
    parentOrganisationReference: parentOrganisationReference,
  );
}