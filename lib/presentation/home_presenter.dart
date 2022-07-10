import 'package:fiap_mobile_trabalho/domain/entities/organization_entity.dart';
import 'package:fiap_mobile_trabalho/domain/usecases/organization/fetch_organization.dart';
import 'package:fiap_mobile_trabalho/domain/utils/domain_erro.dart';
import 'package:get/get.dart';

class HomePresenter extends GetxController {
  
  HomePresenter({required this.fetchOrganization});

  final FetchOrganization fetchOrganization;

  final organizationList = Rx<List<OrganizationEntity>>([]);

  final errorMessage = RxString('');

  @override
  void onInit() async {

    super.onInit();
    try {
      
      organizationList.value = await fetchOrganization.execute();
      
    } on DomainError catch (error) {
      errorMessage.value = (error == DomainError.invalidCredentials)
          ? 'Credenciais inválidas'
          : 'Erro, tente novamentse';
    }

  }
}