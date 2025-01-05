import 'package:fasio_vendor/app/modules/sign_in/views/email_signin_component.dart';
import 'package:fasio_vendor/app/modules/sign_in/views/phone_number_component.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: height * 0.02, left: width * 0.01),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("${controller.assets}compnay_logo_1.png"),
                        SizedBox(
                          width: width * 0.004,
                        ),
                        Text("LOGO",
                            style: TextStyle(
                              fontFamily: "fasio",
                              fontSize: (height + width) * 0.01,
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02, right: width * 0.01),
                      child: const Divider(
                        height: 1,
                        thickness: 1,
                        color: Color(0xffD9D9D9),
                      ),
                    )
                  ],
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Welcome",
                        style: TextStyle(
                            color: Color(0xff7A288A),
                            fontSize: (height + width) * 0.015,
                            fontWeight: FontWeight.w900,
                            fontFamily: "flasioMainBold")),
                    SizedBox(
                      width: width * 0.004,
                    ),
                    Text("Back",
                        style: TextStyle(
                            fontSize: (height + width) * 0.015,
                            fontWeight: FontWeight.w900,
                            fontFamily: "flasioMainBold")),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Image.asset("${controller.assets}hi_greeting.png",),

                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Hi there! Please enter your credentials to ",
                        style: TextStyle(
                            fontSize: (height + width) * 0.008,
                            fontWeight: FontWeight.w900)),
                    SizedBox(
                      width: width * 0.004,
                    ),
                    Text("Sign in",
                        style: TextStyle(
                            fontSize: (height + width) * 0.008,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff7A288A))),
                    SizedBox(
                      width: width * 0.004,
                    ),
                    Text(" and access your account.",
                        style: TextStyle(
                            fontSize: (height + width) * 0.008,
                            fontWeight: FontWeight.w900))
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height*0.5,
                  width: width*0.280,
                  child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      appBar: TabBar(
                        tabs: [
                          Expanded(child: Text("Sign in using Email",style: TextStyle(fontWeight: FontWeight.bold))),
                          Expanded(child: Text("Sign in using Phone Number",style: TextStyle(fontWeight: FontWeight.bold))),
                        ],
                      ),
                      body: TabBarView(children: [
                        EmailNumberComponent(context: context,),
                        PhoneNumberComponent(),

                      ]),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
