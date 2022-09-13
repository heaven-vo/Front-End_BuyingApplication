import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_food_app/constants/Theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController controller = TextEditingController();
  String value = "";
  bool isValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Bắt đầu"),
          centerTitle: true,
          leading: BackButton(color: Colors.black),
          titleTextStyle: TextStyle(
              color: MaterialColors.black,
              fontSize: 24,
              fontFamily: "SF Heavy"),
          backgroundColor: MaterialColors.white),
      body: SafeArea(
          child: Container(
              color: MaterialColors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Điền số điện thoại của bạn",
                            style:
                                TextStyle(fontFamily: "SF Bold", fontSize: 24),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "Số điện thoại dùng để đăng nhập hoặc mở tài khoản nếu bạn lần đầu sử dụng.",
                            style: TextStyle(
                                fontFamily: "SF Regular",
                                fontSize: 19,
                                color: MaterialColors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            "Số điện thoại",
                            style: TextStyle(
                                fontFamily: "SF Bold",
                                fontSize: 16,
                                color: MaterialColors.black),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: MaterialColors.grey
                                              .withOpacity(0.4),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(30)),
                                  width: 115,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              left: 15,
                                              right: 15),
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              bottomLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                            ),
                                            child: Image.asset(
                                              'assets/images/flag.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      Container(
                                        child: Text(
                                          "+84",
                                          style:
                                              TextStyle(fontFamily: "SF Bold"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 20, bottom: 5),
                                  width: MediaQuery.of(context).size.width * 1 -
                                      155,
                                  child: TextField(
                                    controller: controller,
                                    autofocus: true,
                                    style: TextStyle(
                                        fontFamily: "SF Bold", fontSize: 22),
                                    keyboardType: TextInputType.number,
                                    onChanged: (text) {
                                      value = text;
                                      if (value.length.toInt() > 9) {
                                        setState(() {
                                          isValid = true;
                                        });
                                      } else {
                                        setState(() {
                                          isValid = false;
                                        });
                                      }
                                    },
                                  ),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: isValid
                                ? MaterialColors.primary
                                : MaterialColors.grey.withOpacity(0.1),
                            textStyle: TextStyle(
                                color: isValid
                                    ? MaterialColors.primary
                                    : MaterialColors.grey.withOpacity(0.1)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            "Tiếp tục",
                            style: TextStyle(
                                fontFamily: 'SF Heavy',
                                fontSize: 20,
                                color: isValid
                                    ? MaterialColors.black
                                    : MaterialColors.white),
                          ),
                          onPressed: () {
                            if (isValid) {
                              Navigator.pushReplacementNamed(context, '/login');
                            }
                          },
                        ),
                      ))),
                ],
              ))),
    );
  }
}
