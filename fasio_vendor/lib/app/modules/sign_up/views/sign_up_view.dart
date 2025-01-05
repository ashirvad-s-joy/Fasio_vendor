import 'package:fasio_vendor/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:fasio_vendor/app/routes/app_pages.dart';
import 'package:fasio_vendor/components/TextNormalCustom.dart';
import 'package:fasio_vendor/components/color_custom.dart';
import 'package:fasio_vendor/components/text_bold_custom.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Join",
                          style: TextStyle(
                              color: Color(0xff7A288A),
                              fontSize: (height + width) * 0.015,
                              fontWeight: FontWeight.w900,
                              fontFamily: "flasioMainBold")),
                      SizedBox(
                        width: width * 0.004,
                      ),
                      Text("Flashio",
                          style: TextStyle(
                              fontSize: (height + width) * 0.015,
                              fontWeight: FontWeight.w900,
                              fontFamily: "flasioMainBold")),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Image.asset("${controller.assets}hand_shake.png"),
              
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Sign up",
                          style: TextStyle(
                              fontSize: (height + width) * 0.008,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff7A288A))),
                      SizedBox(
                        width: width * 0.004,
                      ),
                      Text("now and join our community",
                          style: TextStyle(
                              fontSize: (height + width) * 0.008,
                              fontWeight: FontWeight.w900)),
              
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  ///upload pics
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("${controller.assets}user_image.png",fit:BoxFit.fitHeight,height: height*0.1,),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width*0.12, // Set the width of the container
                            height: height*0.07, // Set the height of the container
                            decoration: BoxDecoration(
                              color: Colors.transparent, // Make the container transparent
                              border: Border.all(
                                color: Color(0xFF7A288A), // Border color
                                width: 0.5, // Border width
                              ),
                              borderRadius: BorderRadius.circular(15), // Curved edges
                            ),
                            alignment: Alignment.center, // Center the text
                            child: TextNormalCustom(
                              text: 'Upload Profile Image',
                              fontSize: width*0.01,
                              fontColor: ColorCustom.colorPrimary,
                              fontWeight: FontWeight.w800,
                              // Text in the middle
              
                            ),
                          ),
                          TextNormalCustom(
                            text: 'Min 256 * 256 px PNG or JPG file.',
                            fontSize: width*0.01,
                            fontColor: ColorCustom.colorSecondary,
                            fontWeight: FontWeight.w500,
                            // Text in the middle
              
                          )
              
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  ///
                  ///
              
                  SizedBox(
                    width: width*0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
              
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                          children: [
                            SizedBox(
                              width: width*0.13,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Shop name*",style: TextStyle(fontWeight: FontWeight.bold),),
              
                                    ],
                                  ),
                                  SizedBox(height: height*0.01,),
                                  TextFormField(
                                    decoration:  const InputDecoration(
                                      floatingLabelBehavior: FloatingLabelBehavior.never,
                                      filled: true,
              
                                      fillColor: Color(0x909A9595
                                      ),
                                      focusColor: Color(0xffF5F5F5
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(9)),
                                        borderSide:  BorderSide(color: Color(0xffF5F5F5
                                        ),),
                                      ),
                                      focusedBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(9)),
                                        borderSide:  BorderSide(color: Color(0xff7A288A),width: 1.5),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xffF5F5F5
                                          ),),
              
                                          borderRadius: BorderRadius.all(Radius.circular(9))
                                      ),
                                      labelText: 'Shop name',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width*0.13,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Owner name*",style: TextStyle(fontWeight: FontWeight.bold),),
              
                                    ],
                                  ),
                                  SizedBox(height: height*0.01,),
                                  TextFormField(
                                    decoration:  const InputDecoration(
                                      floatingLabelBehavior: FloatingLabelBehavior.never,
                                      filled: true,
              
                                      fillColor: Color(0x909A9595
                                      ),
                                      focusColor: Color(0xffF5F5F5
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(9)),
                                        borderSide:  BorderSide(color: Color(0xffF5F5F5
                                        ),),
                                      ),
                                      focusedBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(9)),
                                        borderSide:  BorderSide(color: Color(0xff7A288A),width: 1.5),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xffF5F5F5
                                          ),),
              
                                          borderRadius: BorderRadius.all(Radius.circular(9))
                                      ),
                                      labelText: 'Owner name',
                                    ),
                                  ),
                                ],
                              ),
                            ),
              
              
                          ],
                        ),
                        SizedBox(height: height*0.01,),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Email",style: TextStyle(fontWeight: FontWeight.bold),),
              
                        ],
                      ),
                        SizedBox(height: height*0.01,),
                        TextFormField(
                          decoration:  const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            filled: true,
              
                            fillColor: Color(0x909A9595
                            ),
                            focusColor: Color(0xffF5F5F5
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              borderSide:  BorderSide(color: Color(0xffF5F5F5
                              ),),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              borderSide:  BorderSide(color: Color(0xff7A288A),width: 1.5),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1,color: Color(0xffF5F5F5
                                ),),
              
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            labelText: 'Email.',
                          ),
                        ),


                        SizedBox(height: height*0.01,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Phone Number",style: TextStyle(fontWeight: FontWeight.bold),),

                          ],
                        ),
                        SizedBox(height: height*0.01,),
                        TextFormField(
                          decoration:  const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            filled: true,

                            fillColor: Color(0x909A9595
                            ),
                            focusColor: Color(0xffF5F5F5
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              borderSide:  BorderSide(color: Color(0xffF5F5F5
                              ),),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              borderSide:  BorderSide(color: Color(0xff7A288A),width: 1.5),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1,color: Color(0xffF5F5F5
                                ),),

                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            labelText: 'Phone Number.',
                          ),
                        ),


                        SizedBox(height: height*0.01,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Shop address*",style: TextStyle(fontWeight: FontWeight.bold),),

                          ],
                        ),
                        SizedBox(height: height*0.01,),
                        TextFormField(
                          minLines: 4,
                          maxLines: 4,
                          decoration:  const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            filled: true,

                            fillColor: Color(0x909A9595
                            ),
                            focusColor: Color(0xffF5F5F5
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              borderSide:  BorderSide(color: Color(0xffF5F5F5
                              ),),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              borderSide:  BorderSide(color: Color(0xff7A288A),width: 1.5),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1,color: Color(0xffF5F5F5
                                ),),

                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            labelText: 'Shop address*.',
                          ),
                        ),


                        SizedBox(height: height*0.01,),
                        SizedBox(height: height*0.01,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Already have an account?"),
                            InkWell( onTap: (){
                              Get.toNamed(Routes.SIGN_IN);
                            },
                                child: Text("Sign In",style: TextStyle(color: Colors.blue),))

                          ],
                        ),



                        SizedBox(height: height*0.04,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Define your button action here
                              print('Button Pressed!');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff7A288A), // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9), // Rounded corners
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text(
                                'Sign up',
                                style: TextStyle(color: Colors.white), // Text color
                              ),
                            ),
                          ),
                        ),



                        SizedBox(height: height*0.03,),
                        Padding(
                          padding:  EdgeInsets.only(right: width*0.03,left: width*0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("sign_up_images/google_social_media.png"),
                              Image.asset("sign_up_images/face_book_social_media.png"),
                              Image.asset("sign_up_images/instagram_social_media.png",fit:BoxFit.fitHeight,height: height*0.05,),
                              Image.asset("sign_up_images/x_social_media.png",fit: BoxFit.fitHeight,height: height*0.05,),

                            ],
                          ),
                        ),
              
                      ],
                    ),
                  ),
              
              
              
              
              
                  ///
              
              
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
