import 'package:get/get.dart';
import 'package:online_shop/app/data/enum/auth_type.dart';
import 'package:online_shop/app/data/services/authentication_service.dart';

class AuthenticationController extends GetxController {
  final AuthenticationService authenticationService= AuthenticationService();
  final Rx<Authentication> auth= Authentication.authenticationLoading.obs;

  @override
  void onInit() {
    _getAuthenticatedUser();
    super.onInit();
  }


  void signOut() async {
    auth.value= Authentication.unAuthenticated;
  }

  void _getAuthenticatedUser() async {

    final user = await authenticationService.getCurrentUser();

    if (user == null) {
      auth.value= Authentication.unAuthenticated;
    } else {
      auth.value= Authentication.authenticated;
    }
  }

  bool isAuth(){
    return auth.value == Authentication.authenticated;
  }

  bool isWaiting(){
    return auth.value == Authentication.authenticationLoading;
  }

}
