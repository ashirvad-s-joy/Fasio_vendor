import 'package:flutter/material.dart';

class PhoneNumberComponent extends StatefulWidget{
  const PhoneNumberComponent({super.key});

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Phone Number",style: TextStyle(fontWeight: FontWeight.bold),),
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
                  labelText: 'Phone Number.',
                ),
              )
          ),
          SizedBox(height: height*0.02,),

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
    );

  }
}