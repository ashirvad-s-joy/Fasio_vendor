import 'package:fasio_vendor/app/routes/app_pages.dart';
import 'package:fasio_vendor/components/color_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailNumberComponent extends StatefulWidget{
  const EmailNumberComponent({super.key, required this.context});
  final BuildContext context;


  @override
  State<StatefulWidget> createState()=>_PhoneNumberComponent();

}

class _PhoneNumberComponent extends State {
  bool isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Email",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: height*0.01,),
          SizedBox(
            width: width*0.3,
            child: TextFormField(
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
            )
          ),
          SizedBox(height: height*0.02,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Password",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: height*0.01,),
          SizedBox(
            width: width*0.3,
            child: TextFormField(
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
                  borderSide:  BorderSide(color: ColorCustom.colorPrimary,width: 1.5),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,color: Color(0xffF5F5F5
                    ),),

                    borderRadius: BorderRadius.all(Radius.circular(9))
                ),
                labelText: 'Password.',
              ),
            ),
          ),
          SizedBox(height: height*0.01,),
          SizedBox(
            width: width*0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: isRememberMeChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isRememberMeChecked = value ?? false;
                    });
                  },
                ),
                Text('Remember me'),
                Spacer(), // Adds space between the Remember me text and the Forgot Password text
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue),
                ),

              ],
            ),


          ),
          SizedBox(height: height*0.01,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {

                Get.toNamed(Routes.DASHBOARD);
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
                  'Sign in',
                  style: TextStyle(color: Colors.white), // Text color
                ),
              ),
            ),

          ),
          SizedBox(height: height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Don't have an account?"),
              InkWell( onTap: (){
                Get.toNamed(Routes.SIGN_UP);
              },
                  child: Text("Sign Up?",style: TextStyle(color: Colors.blue),))

            ],
          ),
          SizedBox(height: height*0.01,),
          SizedBox(
            width: width*0.280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xffD9D9D9),
                ),
                Text("Or continue with"),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xffD9D9D9),
                )
            
              ],
            ),
          ),
          SizedBox(height: height*0.01,),
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
    );

  }
}