import 'package:background_sms/background_sms.dart';

Future sending_SMS({required String msg, required String num}) async {
  var result = await BackgroundSms.sendMessage(message: msg, phoneNumber: num);
}
