import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ReceipDetailsRepo {
  Future<http.Response> getReceip() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var response = await http.get(
        Uri.parse(
          "https://mandobk.everest-ci.com/v1/mobile/visitor/recipe",
        ),
        headers: {"Authorization": 'Bearer ${preferences.getString('token')}'});
    return response;
  }
}
class ReceipDetailsArchive{
  Future<http.Response> getArchive() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var response = await http.get(
        Uri.parse(
          "https://mandobk.everest-ci.com/v1/mobile/visitor/archive",
        ),
        headers: {"Authorization": 'Bearer ${preferences.getString('token')}'});
    return response;
  }
}
