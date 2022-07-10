import 'package:fiap_mobile_trabalho/main/factories/usecases/auth/remote_register_with_email.dart';
import 'package:fiap_mobile_trabalho/presentation/register_presenter.dart';

RegisterPresenter makeRegisterPresenter() => RegisterPresenter(

  registerWithEmail: makeRemoteRegisterWithEmail(),
  
);
