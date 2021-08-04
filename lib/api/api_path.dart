class ApiPath{
  static const _VERSION = '';
  static const _API = '/api';
  static const _Account = '/Account';
  static const _DeliveryRequest = '/DeliveryRequest';


  static const ConfirmCustomerMobile = _API+_Account+'/ConfirmCustomerMobile';
  static const TokenGenerate = _API+_Account+'/TokenGenerate';
  static const TokenRefresh  = _API+_Account+'/TokenRefresh';
  static const ChangePassword  = _API+_Account+'/ChangePassword';
  static const CustomerChangePassword  = _API+_Account+'/CustomerChangePassword';



  static const ContactUs  = _API+'/ContactUs';



  static const Create  = _API+_DeliveryRequest+'/Create';
  static const Cancel  = _API+_DeliveryRequest+'/Cancel';
  static const Search  = _API+_DeliveryRequest+'/Search';



}