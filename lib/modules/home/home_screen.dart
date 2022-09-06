import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../language/language_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: const Image(
          image: NetworkImage(
            'https://raw.githubusercontent.com/theflutterfactory/Flutter-Tutorials/easy_localization_tutorial/assets/images/logo.png',
          ),
        ),
        title: const Text(
          'Easy Localizations',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 40,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Cheetah Cooding',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
              Text(
              'home_description'.tr(),
              style: const TextStyle(
                fontSize: 18.0,
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 35,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(15.0,),),
              ),
              height: 70,
              child: MaterialButton(
                elevation: 20.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LanguageScreen(),
                    ),
                  );
                },
                child:
                const Text(
                  'home_btn_text',
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
