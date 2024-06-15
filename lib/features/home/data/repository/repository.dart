import '../model/data_model.dart';
import 'package:http/http.dart' as http;


class Repository{
  final String baseUrl = 'https://trogon.info/tutorpro/edspark/api/';

  Future<Course?> getCourseData(String authToken) async {
    try {
      final url = Uri.parse('${baseUrl}my_course?auth_token=$authToken');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final course = courseFromJson(response.body);
        return course;
      } else {
        print('Failed to load course data: ${response.reasonPhrase}');
        return null;
      }
    } catch (e) {
      print('Error fetching course data: $e');
      return null;
    }
  }
}