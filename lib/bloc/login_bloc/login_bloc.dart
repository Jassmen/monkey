import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monkey/api/api_path.dart';
import 'package:monkey/api/api_service.dart';
import 'package:monkey/bloc/login_bloc/login_event.dart';
import 'package:monkey/bloc/login_bloc/login_state.dart';
import 'package:monkey/model/login_model.dart';
import 'package:monkey/model/login_response.dart';
import 'package:monkey/repository/login_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  ApiService? _apiService;
  ApiPath? _apiPath;

  LoginBloc() : super(LoginStateInit());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginEventFetch) {
      yield* mapEventFetch(event);
    }
  }

  Stream<LoginState> mapEventFetch(LoginEventFetch event) async* {
    try {
      yield LoginStateLoading();
      final LoginResponse response = await LoginRepository.login(loginModel: event.loginModel);
      if (response.resultCode == 'Success') {
        yield LoginStateSuccess(loginResponse: response);
      } else {
        yield LoginStateFailed(error: 'Error ');
      }
    } catch (e) {
      yield LoginStateFailed(error: e.toString());
    }
  }
}
