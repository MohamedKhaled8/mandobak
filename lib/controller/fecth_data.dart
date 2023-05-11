import 'dart:convert';
import 'package:get/get.dart';
import '../model/receipe_model.dart';
import 'package:http/http.dart' as http;
import '../repository/rceipe_details_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: unused_import


class FetchDataController extends GetxController {
  ReceipDetailsRepo receipDetailsRepo = ReceipDetailsRepo();
  ReceipDetailsArchive receipDetailsArchive = ReceipDetailsArchive();
  List<Receipe> list = [];
  List<Receipe> listArchive = [];

  Future<void> getReceip() async {
    var response = await receipDetailsRepo.getReceip();
    if (response.statusCode == 200) {
      var responseBoy = json.decode(response.body);
      list = [];
      for (var i in responseBoy['data']) {
        list.add(Receipe.fromJson(i));
      }
      update();
    } else {
      Get.snackbar('error', '${response.statusCode}');
    }
  }

  Future<List<Receipe>> getArchive() async {
    var response = await receipDetailsArchive.getArchive();
    if (response.statusCode == 200) {
      var responsebody = json.decode(response.body);

      for (var i in responsebody['data']) {
        listArchive.add(Receipe.fromJson(i));
      }
      final objecTwoModel = responsebody["data"].map<Receipe>((e) {
        return Receipe.fromJson(e);
      }).toList();

      update();
      return objecTwoModel;
    } else {
      Get.snackbar('error', '${response.statusCode}');
      throw Exception("Erro Get Arcive");
    }
  }

  // ignore: non_constant_identifier_names
  Future<void> postArchive(
    int random_number,
  ) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();

      var url =
          Uri.parse("https://mandobk.everest-ci.com/v1/mobile/visitor/archive");
      var response = await http.post(url,
          body: json.encode({
            "random_number": random_number,
          }),
          headers: {
            'Accept': 'application/vnd.api+json',
            'Authorization': 'Bearer ${preferences.getString("token")}',
            'Content-Type': 'application/json'
          });
//eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL21hbmRvYmsuZXZlcmVzdC1jaS5jb20vdjEvbW9iaWxlL2xvZ2luIiwiaWF0IjoxNjc4MzY2OTQ3LCJleHAiOjE2NzgzNzQxNDcsIm5iZiI6MTY3ODM2Njk0NywianRpIjoiaUhKUHhIZER1MjRtOTI4ViIsInN1YiI6IjEyIiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.lNKR_vpvfLawY8dXBhMPsCgfr9_Qzib8Bq9v2ZTWlXA';
      if (response.statusCode == 200) {
        // ignore: avoid_print
        print('200');
        // ignore: unused_local_variable
        var responsebody = json.decode(response.body);
      } else {}
    } catch (e, s) {
      e.toString();
    }
  }
}
