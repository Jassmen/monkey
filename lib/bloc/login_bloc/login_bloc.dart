import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monkey/api/api_path.dart';
import 'package:monkey/api/api_service.dart';
import 'package:monkey/bloc/login_bloc/login_event.dart';
import 'package:monkey/bloc/login_bloc/login_state.dart';
import 'package:monkey/model/login_model.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  ApiService? _apiService;
  ApiPath? _apiPath;

  LoginBloc() : super(LoginStateInit());


  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async*{
    if(event is LoginEventFetch){
      yield* mapEventFetch(event);
    }

  }
  Stream<LoginState> mapEventFetch(LoginEventFetch event) async*{
    try{
     yield LoginStateLoading();

     //List<LoginModel> login = await
     //_apiService.postApi(path: ApiPath.UserNameLogin+event.mobile+ApiPath.Password+event.password);
    }catch(e){
      yield LoginStateFailed(error: e.toString());
    }
  }


  
}