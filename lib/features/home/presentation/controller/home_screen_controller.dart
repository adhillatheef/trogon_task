import 'package:get/get.dart';

import '../../data/model/data_model.dart';
import '../../data/repository/repository.dart';

class HomeScreenController extends GetxController {
  var isLoading = true.obs;
  var courseData = Rx<Course?>(null);

  final Repository repository;

  HomeScreenController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    fetchCourseData();
  }

  void fetchCourseData() async {
    try {
      isLoading(true);
      const authToken = 'your_auth_token_here';
      Course? fetchedData = await repository.getCourseData(authToken);
      if (fetchedData != null) {
        courseData.value = fetchedData;
      } else {
        print('Failed to fetch course data');
      }
    } finally {
      isLoading(false);
    }
  }
}
