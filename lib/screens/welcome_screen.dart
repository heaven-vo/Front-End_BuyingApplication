import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_food_app/constants/Theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          color: MaterialColors.primary,
          child: Stack(
            children: [
              Positioned(
                  top: 65,
                  left: 40,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        child: Image.asset(
                          'assets/images/chef.png',
                          fit: BoxFit.cover,
                        ),
                      ))),
              Positioned(
                  top: 170,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                        child: Text(
                      "Chào mừng đến với UNICO",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 36,
                          fontFamily: "SF Bold",
                          color: MaterialColors.secondary),
                    )),
                  )),
              Positioned(
                  bottom: 40,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 80,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 255, 255),
                            textStyle:
                                TextStyle(color: MaterialColors.secondary),
                            shadowColor: MaterialColors.secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            "Bắt đầu ngay",
                            style: TextStyle(
                                fontFamily: 'SF Bold',
                                fontSize: 18,
                                color: MaterialColors.secondary),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                        ),
                      ))))
            ],
          )),
    );
  }
}
