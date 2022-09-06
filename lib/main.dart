import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'modules/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp (
    EasyLocalization (
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('hi', 'IN'),
          Locale('pt', 'BR'),
          Locale('vi', 'VN'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
