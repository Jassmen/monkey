enum ButtonNum{ google,facebook,create,login,send,next}

extension ButtonEnum on ButtonNum{
  String get value{
    switch(this){
      case ButtonNum.facebook:
        return 'Login with Facebook';
      case ButtonNum.google:
        return 'Login with Google';
      case ButtonNum.create:
        return 'Create an account';
      case ButtonNum.login:
        return 'Login';
      case ButtonNum.send:
        return 'Send';
      case ButtonNum.next:
        return 'Next';

    }
  }
}