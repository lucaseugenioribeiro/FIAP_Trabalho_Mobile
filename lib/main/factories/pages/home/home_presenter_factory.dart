import 'package:fiap_mobile_trabalho/main/factories/usecases/organization/remote_fetch_organization_factory.dart';
import 'package:fiap_mobile_trabalho/presentation/home_presenter.dart';

HomePresenter makeHomePresenter() => HomePresenter(
  fetchOrganization: makeRemoteFetchOrganization(),
);
