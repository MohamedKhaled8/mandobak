import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {


Future<bool>  setAuthToken (String token) async {

 final  preferences = await SharedPreferences.getInstance();
return preferences.setString(UserProfile.AuthToken.toString() , token);

}
Future<String?>  getAuthToken () async {

 final  preferences = await SharedPreferences.getInstance();
return preferences.getString(UserProfile.AuthToken.toString());

}

}

enum UserProfile{
  AuthToken,
}