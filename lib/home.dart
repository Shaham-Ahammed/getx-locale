// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});

  final String title;

  final List locale = [
    {
      "name": "ENGLISH",
      'locale': const Locale("en", "US"),
    },
    {
      "name": "हिंदी",
      'locale': const Locale("hi", "IND"),
    },
    {
      "name": "മലയാളം",
      'locale': const Locale("mal", "IND"),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                "name".tr,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "place".tr,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "education".tr,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  ShowDialogue(context);
                },
                child: Ink(
                  width: 120,
                  height: 30,
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: const Text("change language"),
                ),
              )
            ])));
  }

  ShowDialogue(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text("choose language"),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: locale.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        seletLanguage(locale[index]['locale']);
                      },
                      child: Text(
                        locale[index]['name'],
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        });
  }

  seletLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }
}
