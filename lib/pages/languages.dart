import 'package:get/get.dart';
import 'package:class_8_assn/languages/eng.dart';
import 'package:class_8_assn/languages/ban.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': eng,
        'bn_BD': ban,
      };
}
