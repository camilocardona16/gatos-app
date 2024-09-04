import 'package:flutter/material.dart';
import 'package:gatos_app/app/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(context: context),
        builder: (_) => Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 25.0),
                    child: Center(
                      child: Container(
                          alignment: Alignment.topCenter,
                          width: 250.0,
                          child: Column(children: const [
                            Text(
                              "Catbreeds",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image(
                              image: AssetImage('assets/images/gato-1.jpg'),
                            ),
                          ])),
                    ),
                  ),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Color(0xFF005833)),
                  ),
                  Expanded(
                    child: Container(),
                  )
                ],
              ),
            ));
  }
}
