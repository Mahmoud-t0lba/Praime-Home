import 'components.dart';
import '../network/local/cache_helper.dart';

void signOut(context, widget) {
  CacheHelper.removeData(
    key: 'token',
  ).then((value) {
    if (value) {
      navigateAndFinish(
        context,
        widget,
      );
    }
  });
}

String? token = '';
