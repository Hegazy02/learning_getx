import 'package:get/get.dart';
import 'package:getx/constants/localization_constants.dart';

class MyLocal implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          LocalizationConstants.home: 'الرئيسية',
          LocalizationConstants.language: 'اللغة',
        },
        'en': {
          LocalizationConstants.home: LocalizationConstants.home,
          LocalizationConstants.language: LocalizationConstants.language,
        },
      };
}
