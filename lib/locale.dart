import 'package:get/get.dart';

class Localestring extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "name": "my name is shaham",
          "place": "iam coming from chaliyam",
          "education": "iam studying in brototype"
        },
        "hi_IND": {
          "name": "मेरा नाम शाहम है",
          "place": "मैं चालियाम से आ रहा हूं",
          "education": "मैं ब्रोटोटाइप में पढ़ रहा हूं"
        },
        "mal_IND": {
          "name": "എൻ്റെ പേര് ഷാഹം",
          "place": "ഞാൻ ചാലിയത്ത് നിന്ന് വരുന്നു",
          "education": "ബ്രോട്ടോടൈപ്പിൽ പഠിക്കുന്നു"
        }
      };
}
