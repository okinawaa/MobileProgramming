import 'package:uuid/uuid.dart';

class DataUtil {
  static String makeFilePath() {
    return '${const Uuid().v4()}.jpg';
  }
}
