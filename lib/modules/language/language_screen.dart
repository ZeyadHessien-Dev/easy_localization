import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Languages',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text(
              'languages_description',
              style: TextStyle(
                fontSize: 21.0,
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
            const SizedBox(height: 35,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(15.0,),),
              ),
              height: 70,
              width: 250,
              child: MaterialButton(
                elevation: 20.0,
                onPressed: () {
                  context.setLocale(const Locale('en', 'US'));
                },
                child: const Text(
                  'languages_btn_english',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ).tr(),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(15.0,),),
              ),
              height: 70,
              width: 250,
              child: MaterialButton(
                elevation: 20.0,
                onPressed: () {
                  context.setLocale(const Locale('hi', 'IN'));
                },
                child: const Text(
                  'languages_btn_portuguese',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ).tr(),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(15.0,),),
              ),
              height: 70,
              width: 250,
              child: MaterialButton(
                elevation: 20.0,
                onPressed: () {
                  context.setLocale(const Locale('pt', 'BR'));
                },
                child: const Text(
                  'languages_btn_hindi',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ).tr(),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(15.0,),),
              ),
              height: 70,
              width: 250,
              child: MaterialButton(
                elevation: 20.0,
                onPressed: () {
                  context.setLocale(const Locale('vi', 'VN'));
                },
                child: const Text(
                  'languages_btn_vietnamese',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ).tr(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
